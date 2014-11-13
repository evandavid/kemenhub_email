# keep alive server
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.new

scheduler.every '4m' do
  require "net/http"
  require "uri"
  url = 'http://polar-wave-3605.herokuapp.com/?body=<h3>ini talkshow<h3>&to=ev.kristian@gmail.com&subject=cons'
  Net::HTTP.get_response(URI.parse(url))
end

# set pony mail
Pony.options = {
  :from => 'noreply@dephub.go.id',
  :via => :smtp,
  :via_options => {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => 'heroku.com',
    :user_name      => 'app31558314@heroku.com',
    :password       => 'rg68qktn',
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
}