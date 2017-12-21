require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
   #instance method will be responsible for using Nokogiri and open-uri 
   #to grab the entire HTML document from the web page
   def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))  # more code coming soon!
  end
    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



