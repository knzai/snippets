describe "server" do
  include Rack::Test::Methods
  
  def app
    Snippets::Server
  end
  
  it "should say hello" do
    get ''
    last_response.body.should == 'hello'
  end
end
