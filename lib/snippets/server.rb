class Snippets::Server < Sinatra::Base
  
  get '/' do
    'hello'
  end
  
end