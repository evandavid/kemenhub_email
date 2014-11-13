require "sinatra"
require 'sinatra-initializers'

class MiniApp < Sinatra::Base

    register Sinatra::Initializers
    get "/" do
      Pony.mail(:to => 'ev.kristian@gmail.com', :from => 'noreply@example.com', :subject => 'hi', :body => 'Hello there.')
    end

end
