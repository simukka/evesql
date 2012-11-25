# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin', :max_usage => '999999999' },
  { :name => 'basic', :max_usage => '1000' },
  { :name => 'plus', :max_usage => '10000' },
  { :name => 'pro' , :max_usage => '100000' }
], :without_protection => true)
user = User.create! :name => 'Admin', :email => 'admin@evesql.com', :password => 'password', :password_confirmation => 'password'
user.add_role :admin
