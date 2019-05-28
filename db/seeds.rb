# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.create!(name: 'Iнформаційні технології')
Category.create!(name: 'Адміністрація, керівництво середньої ланки ')
Category.create!(name: 'Бухгалтерія')
Category.create!(name: 'Готельно-ресторанний бізнес, туризм')
Category.create!(name: 'Дизайн, мистецтво')
Category.create!(name: 'Краса, фітнес, спорт')
Category.create!(name: 'Логістика')
Category.create!(name: 'Маркетинг, реклама, PR')
Category.create!(name: 'Медицина, фармацевтика ')
Category.create!(name: 'Нерухомість')
Category.create!(name: 'Охорона, безпека')
Category.create!(name: 'Продаж, закупівля')
Category.create!(name: 'Робочі спеціальності, виробництво')
Category.create!(name: 'Сільське господарство')
Category.create!(name: 'ЗМІ, видавництво, поліграфія')
Category.create!(name: 'Будівництво, архітектура')
Category.create!(name: 'Сфера обслуговування')
Category.create!(name: 'Транспорт, автобізнес')
Category.create!(name: 'Фінанси, банк')