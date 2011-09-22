# By using the symbol ':user', we get Factory Girl to simulate the User model.

# USERS
Factory.define :user do |user|
  user.name                  "MichaelHartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :name do |n|
  "User_#{n}"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

# MICROPOSTS
Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end

# CHANNELS
Factory.define :channel do |channel|
  channel.name "TheCosmos"
  channel.zone 1
end

Factory.sequence :channel do |n|
  "channel_#{n}"
end