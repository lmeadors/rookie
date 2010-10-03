# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
SiteAttribute.create(:name => 'title', :string_value => 'Elm Software Solutions')
SiteAttribute.create(:name => 'slogan', :string_value => 'Some catchy slogan that makes me sound smart')
SiteAttribute.create(:name => 'copyright', :string_value => '&copy; 2010 Elm Software Solutions, Inc.')
