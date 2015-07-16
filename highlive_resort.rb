require 'sinatra'
require 'mandrill'

get '/home' do
	@title = "Home"
    @stylesheet = "name.css"
    erb :home
end

get '/about' do
	@title = "About"
    @stylesheet = "name.css"
    erb :about
end

get '/contact4m' do
	@title = "Contact"
    #@stylesheet = "name.css"
	erb :contact4m
end

post '/contact4m' do

  @firstname = params["fname"]
  @lastname = params["lname"]
  @email = params["email"]
  @address = params["address"]
  @city = params ["city"]
  @state = params["state"]
  @zip = params ["zipcode"]
  @tele = params["tnumber"]


"Dear, #{lname},thanks for contacting us."

  erb :contact4m
end

get './picture' do
	@title = "Picture"
    @stylesheet = "name.css"
	erb :picture
end

