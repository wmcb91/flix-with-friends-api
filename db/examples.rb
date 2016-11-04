# This file should contain all the record creation needed to experiment with
# your app during development.

# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).

# Examples:

# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

%w(brian jeff chris will).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: 'abc123')
end

%w(brian jeff chris will).each do |name|
  user_name = "#{name}man123"
  given_name = name.to_s
  surname = "#{name}iams"
  Profile.create!(user_name: user_name,
                  given_name: given_name,
                  surname: surname,
                  user_id: rand(3) + 1)
end
