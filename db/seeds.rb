# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 ActiveRecord::Base.transaction do
  if User.count == 0 && Role.count == 0
    user = User.new :name => "Admin", :email => "admin@example.org", :password => "password", :password_confirmation => "password"
    user.id = 1
    user.role_id=1
    user.save!
    #user.confirmed_at = user.confirmation_sent_at
    #user.save!
    role1 = Role.new :name => 'Admin'
    role1.id = 1
    role1.description='Administrator'
    role1.save!

    role2 = Role.new :name => 'Doctor'
    role2.id = 2
    role2.description="Doctor"
    role2.save!

    role3 = Role.new :name => 'Patient'
    role3.id = 3
    role3.description="Patient"
    role3.save!

    role4 = Role.new :name => 'Staff'
    role4.id = 4
    role4.description="Office Staff"
    role4.save!

    role5 = Role.new :name => 'Member'
    role5.id = 5
    role5.description="Company Member"
    role5.save!
    end
end