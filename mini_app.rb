require "sinatra"
require 'sinatra-initializers'

class MiniApp < Sinatra::Base

    register Sinatra::Initializers
    post "/" do
        Thread.new {
            body = params['body']
            to = params['to']
            subject = params['subject']

            Pony.mail(
                :to => to, 
                :from => 'noreply@dephub.go.id', 
                :subject => subject, 
                :html_body => body)
        }
    end

    get "/keepalive" do
        "hore"
    end

end
