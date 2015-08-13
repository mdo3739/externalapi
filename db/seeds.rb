admin = User.new(
  name: "Michael Do",
  email: "admin@example.com",
  password: "helloworld",
  unencrypted_password: "boom"
)
admin.skip_confirmation!
admin.save

4.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    password: Faker::Lorem.characters(10),
    unencrypted_password: Faker::Lorem.word
  )
  user.skip_confirmation!
  user.save
end

15.times do
  List.create!(user: User.all.sample, title: Faker::Commerce.department)
end

50.times do 
  Item.create!(list: List.all.sample, description: Faker::Hacker.say_something_smart)
end

puts "#{User.all.count} users created"
puts "#{List.all.count} lists created"
puts "#{Item.all.count} items created"