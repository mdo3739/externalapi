admin = User.new(
  username: "DoughBoi",
  password: "helloworld"
)
admin.save

4.times do
  user = User.new(
    username: Faker::Name.first_name,
    password: Faker::Lorem.characters(10)
  )
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