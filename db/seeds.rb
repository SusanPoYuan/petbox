# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create!(:name => "狗")
Category.create!(:name => "貓")
Category.create!(:name => "兔/鼠")
Category.create!(:name => "鳥")
Category.create!(:name => "爬蟲")
Category.create!(:name => "其他")



