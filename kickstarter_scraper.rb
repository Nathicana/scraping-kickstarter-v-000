require 'nokogiri'
require 'pry'

#projects: kickstarter.css("li.project.grid_4").first
#title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attributes("src").value
#description: project.css("p.bbcard_blurb").text
#project.css("span.location-name").text
#project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i

def create_project_hash
 projects = {}

#iterate through the projects
kickstarter.css("li.project.grid_4").each do |project|
  title = project.css("h2.bbcard_name strong a").text
  projects[title.to_sym] = {}
end

#return the projects hash 
projects 
end


