# keep alive server
# require 'rufus/scheduler'
# scheduler = Rufus::Scheduler.new

# scheduler.every '4m' do
#   require "net/http"
#   require "uri"
#   url = 'http://www.yourwebsite.de'
#   Net::HTTP.get_response(URI.parse(url))
# end

# set pony mail
Pony.mail({
  :to => 'ev.kristian@gmail.com',
  :via => :smtp,
  :via_options => {
    :address        => 'bigpotatoes2.qwords.net',
    :port           => '465',
    :user_name      => 'kemenhub@rifanmfauzi.com',
    :password       => 'initalkshow',
    :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain         => "rifanmfauzi.com" # the HELO domain provided by the client to the server
  }
})