require 'open-uri'
require 'nokogiri'

def self.get_document url
  Nokogiri::HTML( open("http://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers") )
end

doc = Nokogiri::HTML(html)
rows = doc.xpath('//table/[@class="wikitable sortable jquery-tablesorter"]')
details = rows.collect do |row|
  detail = {}
  [
    [:title, 'td[3]/div[1]/a/text()'],
    [:name, 'td[3]/div[2]/span/a/text()'],
    [:date, 'td[4]/text()'],
    [:time, 'td[4]/span/text()'],
    [:number, 'td[5]/a/text()'],
    [:views, 'td[6]/text()'],
  ].each do |name, xpath|
    detail[name] = row.at_xpath(xpath).to_s.strip
  end
  detail
end
pp details