# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pp'
require 'json'

list = ['earthporn', 'spaceporn', 'californiapics', 'seaporn']
img_list = []
for item in list
  crew = []
  doc = Nokogiri::HTML(open("http://www.imgur.com/r/" + item + "/top/all"))
  images = doc.css("#imagelist .posts .post img")
  images.each {|val| crew.push({img: 'https:' + val['src'], title: item})}
  img_list.concat(crew)
end
img_list.shuffle!


for image in img_list
  Photo.create(image)
end



