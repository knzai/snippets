ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => "spec/tmp/test.sqlite3" 
)

# ActiveRecord::Schema.define do 
#   create_table :snippets do |t|
#   end
# end