require 'nokogiri'
require 'pry'



def create_project_hash
 html = File.read('fixtures/kickstarter.html')
 kickstarter = Nokogiri::HTML(html)
#projects: kickstarter.css("li.project.grid_4").first
#title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attributes("src").value
#description: project.css("p.bbcard_blurb").text
#project.css("span.location-name").text
#project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
binding.pry
end

create_project_hash
