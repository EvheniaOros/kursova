# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'admin@example.com', password: '1234567890', password_confirmation: '1234567890') if Rails.env.production?

Category.create(title:'Інформаційні технології')
Category.create(title:'Адміністрація')
Category.create(title:'Бухгалтер')
Category.create(title:'Готельно-ресторанний бізнес')
Category.create(title:'Дизайн')
Category.create(title:'Спорт')
Category.create(title:'КУльтура')
Category.create(title:'Маркетинг, реклама')
Category.create(title:'Медицина')
Category.create(title:'Нерухомість')
Category.create(title:'Освіта')
Category.create(title:'Охорона')
Category.create(title:'Прада')
Category.create(title:'Продаж, закупівля')
Category.create(title:'Робочі спеціальності, виробництво')
Category.create(title:'Сільське господарство')
Category.create(title:'СМИ')
Category.create(title:'Архітектура')
Category.create(title:'Сфера обслуговування')
Category.create(title:'Транспорт')
Category.create(title:'Фінанси')
Category.create(title:'Юриспруденція')
Category.create(title:'Телекомунікації')
Category.create(title:'')
