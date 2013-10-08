require 'open-uri'
require 'nokogiri'

def self.get_document
  Nokogiri::HTML( open("http://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers") )
end

def self.table
	details = page.search('//tr/td[@class="wikitable sortable jquery-tablesorter"]/..').map do |column|
	  language   = column.at(th[1]).text.strip rescue ''
	  {
	    :language     => language,
	  }
end

def self.array
	language.each do |array|
    puts array
end


end