# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as CATEGORIAS..."

categories = [ "Animais e acessórios" ,
               "Esportes" ,
               "Para a sua casa" ,
               "Eletrônicos e celulares" ,
               "Música e hobbies" ,
               "Bebês e crianças" ,
               "Moda e beleza" ,
               "Veículos e barcos" ,
               "Imóveis" ,
               "Empregos e negócios" ]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "CATEGORIAS criadas com Sucesso!!"

puts "Cadastrando o Admin padrão"

Admin.create!(name: "ADM Padrão", email: "admin@admin", password: "admin123", password_confirmation: "admin123", role: 0)

puts "Admin cadastrado com sucesso!"

puts "Cadastrando o MEMBRO Padrão..."

member = Member.new(
  email: "membro@membro.com",
  password: "123456",
  password_confirmation: "123456"
)

# member.build_profile_member

# member.profile_member.first_name = Faker::Name.first_name
# member.profile_member.second_name = Faker::Name.last_name

member.save!

puts "MEMBRO cadastrado com sucesso!"