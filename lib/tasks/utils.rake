namespace :utils do

  desc "Fake Admins creatation"

  task generate_admins: :environment do

    puts "Cadastrando os Admins"

    10.times do
      Admin.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "admin123", password_confirmation: "admin123", role: [0, 1].sample)
    end
    
    puts "Admins cadastrados com sucesso!"

  end
end
