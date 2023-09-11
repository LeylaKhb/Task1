require 'nokogiri'
require 'httparty'

url = "https://www.anekdot.ru/last/good/"
html = HTTParty.get(url)
doc = Nokogiri::HTML(html)

puts doc.css('.text')[0].text