desc 'build the gem, push it, and cleanup (after bumping the version)'
task :gem => ['gem:build']

namespace :gem do
  task :build => [:master_only, :bump] do
    sh "gem build *.gemspec"
    #sh "gem push *.gem"
    sh "mkdir -p pkg"
    sh "mv *.gem pkg/."
  end
  
  task :master_only do
    unless `git branch` =~ /^\* master$/
      puts "You must be on the master branch to release!"
      exit!
    end
  end
  
  task :bump do
    gemspec_file = "#{name}.gemspec"
    spec = File.read(gemspec_file)

    replace_header(spec, :name)
    replace_header(spec, :version)
    replace_header(spec, :date)

    File.open(gemspec_file, 'w') { |io| io.write(spec) }
  end

  def name(original=nil)
    @name ||= Dir['*.gemspec'].first.split('.').first
  end

  def version(original='0.0.0')
    array = original.split('.')
    array[array.length - 1] = array.last.to_i + 1
    array.join('.')
  end

  def date(original=nil)
    require 'date'
    Date.today.to_s
  end

  def replace_header(spec, header_name)
    spec.sub!(/(\.#{header_name}\s*) = '(.*)'/) do
      "#{$1} = '#{send(header_name, $2)}'"
    end
  end
end
