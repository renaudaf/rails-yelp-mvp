10.times do 
 Restaurant.create!({
  name:Faker::JapaneseMedia::DragonBall.character,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
})
end