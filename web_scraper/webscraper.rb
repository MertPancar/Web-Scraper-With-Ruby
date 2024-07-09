
require 'nokogiri'
require 'open-uri'


def fetch_data(url)
  html = URI.open(url)
  Nokogiri::HTML(html)
end


def main
  url = 'https://example.com' # URL of the site from which data will be retrieved
  doc = fetch_data(url)

  
  headlines = doc.css('h2') 

  headlines.each do |headline|
    puts headline.text.strip
  end
end

main
