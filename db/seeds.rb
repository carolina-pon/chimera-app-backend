puts '動物名を入力中…'

10.times do
  character_name =  Faker::Creature::Animal.unique.name
  animal = Animal.create(
      name: character_name
      )
  puts "\"#{animal.name}\" を作成しました。"
end