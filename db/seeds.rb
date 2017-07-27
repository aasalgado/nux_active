# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

Product.destroy_all


@products = Product.create([
    { name: 'something bra', price: 34.00, description: "great support", img_url:"http://i.imgur.com/hO25pKC.jpg?1", category:"bra", s:60, m:100, l: 60},
    { name: 'something jacket', price: 50.00, description: "keeps you warm", img_url:"http://i.imgur.com/A5e2vfD.jpg?1", category:"outerwear", s:60, m:100, l: 60},
    { name: 'another bra', price: 23.00, description: "lightweight and sweatproof", img_url:"http://i.imgur.com/3HcCnji.jpg?1", category:"bra", s:60, m:100, l: 60},
    { name: 'Amazing leggings', price: 42.00, description: "fun pattern that is amazing", img_url:"http://i.imgur.com/QiNjY8U.jpg?1", category:"leggings", s:60, m:100, l: 60},
]);

users = User.create([
    { name: "Chelsea", email: "chelseabarocio@me.com", password: "123", admin: true},
    { name: "John", email: "john@john.john", password: "john", admin: false}

]);


