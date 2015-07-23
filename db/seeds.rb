# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
url = "http://api.giphy.com/v1/gifs/search?q=cat&api_key=dc6zaTOxFJmzC"
doc = Nokogiri::HTML(open(url))
json = JSON.parse(doc)
cats = json["data"].collect do |data|
  {name: data["id"], rating: data["rating"], url: data["images"]["fixed_width"]["url"]}
end
cats.each do |cat|
  gif = Gif.new(cat)
  gif.save
end