require "sinatra"
require 'sinatra-initializers'

class MiniApp < Sinatra::Base

    register Sinatra::Initializers
    post "/" do
        if params['token'] == '0o8gkvlxqVsjy2TOPcFE'
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
    end

    get "/keepalive" do
        puts "keep alive shoted"
        "hore"
    end

end
