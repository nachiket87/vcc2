# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

[
  {
    name: 'Blue Flower',
    image_url: 'https://raw.githubusercontent.com/VentionCo/vention-front-end-test/master/assets/blue-flower.png',
    rating: 4,
    price: 80.00
  },
  {
    name: 'Orange Flower',
    image_url: 'https://raw.githubusercontent.com/VentionCo/vention-front-end-test/master/assets/orange-flower.png',
    rating: 3,
    price: 17.60
  },
  {
    name: 'Pink Flower',
    image_url: 'https://raw.githubusercontent.com/VentionCo/vention-front-end-test/master/assets/pink-flower.png',
    rating: 5,
    price: 40.00
  }
].each do |flower|
  file = URI.open(flower[:image_url])
  product = Product.new(name: flower[:name], price: flower[:price], rating: flower[:rating], in_cart: false)
  product.photo.attach(io: file, filename: flower[:name], content_type: 'image/png')
  product.save
end


=begin
=end
