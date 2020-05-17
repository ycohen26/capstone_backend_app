# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  address1 = Faker::Address.street_address
  address2 = Faker::Address.secondary_address
  city = Faker::Address.city
  state = Faker::Address.state
  zipcode = Faker::Address.zip_code
  email = "#{first_name[0]}.#{last_name}@email.com"
  password = "password"

  user = User.create!(first_name: first_name, last_name: last_name, address_1: address1, address_2: address2, city: city, state: state, zipcode: zipcode, email: email, password: password)
end

# # Bike 1
bike = Bike.new({seller_id: 5, brand: "Giant", model: "Trinity", size: "52 (s)", speeds: "11v", plates: "Compac (50/34)", frame_material: "Carbon", fork_material: "Carbon", year_of_purchase: "2017", wheels: "no profile", aestetic_condition: "With slight marks, rubs or nicks", mechanical_condition: "In perfect condition, ready to roll", has_pedals: true, original_receipt: true, im_a_shop: false, negotiable_price: true})
bike.save

photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/564baee367abc27434442bcc/products/W800-2IK8MRBE5A.jpeg", bike_id: 1})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/564baee367abc27434442bcc/products/W800-2P8OMJ7GBD.jpeg", bike_id: 1})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/564baee367abc27434442bcc/products/W800-Q675IRXUY2.jpeg", bike_id: 1})
photo.save

# #Bike 2
bike = Bike.new({seller_id: 30, brand: "Cannondale", model: "supersixevo", size: "53 (M)", speeds: "11v", plates: "Medium Compac (52/36)", frame_material: "Carbon", fork_material: "Carbon", year_of_purchase: "2018", wheels: "mavic cosmic carbon", aestetic_condition: "With slight marks, rubs or nicks", mechanical_condition: "In perfect condition, ready to roll", has_pedals: true, original_receipt: true, im_a_shop: false, negotiable_price: true, price: 1500.00, group: "shimano 105"})
bike.save

photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5ea3fa4acb512e0db2cbf335/products/W800-YZIF3PFS6X.jpeg", bike_id: 2})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5ea3fa4acb512e0db2cbf335/products/W800-8IE036R6SM.jpeg", bike_id: 2})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5ea3fa4acb512e0db2cbf335/products/W800-TUS0BK15UK.jpeg", bike_id: 2})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5ea3fa4acb512e0db2cbf335/products/W800-ECAI44GKW1.jpeg", bike_id: 2})
photo.save

# # Bike 3
bike = Bike.new({seller_id: 38, brand: "Orbea", model: "orca gold", size: "49 (XS)", speeds: "10v", plates: "Compac (50/34)", frame_material: "Carbon", fork_material: "Carbon", year_of_purchase: "2012", wheels: "mavic khsiriun elite", aestetic_condition: "With slight marks, rubs or nicks", mechanical_condition: "In perfect condition, ready to roll", has_pedals: true, original_receipt: false, im_a_shop: false, negotiable_price: true, price: 1500.00, group: "lasts"})
bike.save

photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/55cc9ca767abc23883726ec1/products/W800-JBKUYSYDOP.jpeg", bike_id: 3})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/55cc9ca767abc23883726ec1/products/W800-Y3XUKTSEA8.jpeg", bike_id: 3})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/55cc9ca767abc23883726ec1/products/W800-OJ2X09A39A.jpeg", bike_id: 3})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/55cc9ca767abc23883726ec1/products/W800-69U566052Z.jpeg", bike_id: 3})
photo.save

# # Bike 4
bike = Bike.new({seller_id: 38, brand: "Orbea", model: "mx 29", size: "17 (M)", speeds: "10v", frame_material: "Aluminum", year_of_purchase: "2018", wheels: "29", aestetic_condition: "With slight marks, rubs or nicks", mechanical_condition: "In perfect condition, ready to roll", has_pedals: true, original_receipt: false, im_a_shop: false, negotiable_price: false, price: 500.00, group: "shimano deore"})
bike.save

photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/56b207d867abc25a68c9e734/products/W800-GWQRXB0JO7.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/56b207d867abc25a68c9e734/products/W800-XVEYO9VBKA.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/56b207d867abc25a68c9e734/products/W800-X7EF6DQHAW.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/56b207d867abc25a68c9e734/products/W800-WGYYVNEQF5.jpeg", bike_id: 4})
photo.save

# # Bike 5
bike = Bike.new({seller_id: 50, brand: "Coluer", model: "radar 4.0", size: "52 (S)", speeds: "11v", plates: "Compac (50/34)", frame_material: "Aluminum", year_of_purchase: "2018", wheels: "mavic aksium", aestetic_condition: "With slight marks, rubs or nicks", mechanical_condition: "In perfect condition, ready to roll", has_pedals: true, original_receipt: false, im_a_shop: false, negotiable_price: true, price: 750.55, group: "shimano 105"})
bike.save

photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5a317baef3747d058ca97374/products/W800-XLSO93N6JG.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5a317baef3747d058ca97374/products/W800-H6GZF46P59.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5a317baef3747d058ca97374/products/W800-PSIUEELGMF.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5a317baef3747d058ca97374/products/W800-KA1MU505EB.jpeg", bike_id: 4})
photo.save

# # Bike 6
bike = Bike.new({seller_id: 34, brand: "Bianchi", model: "methanol cv s", size: "17 (M)", speeds: "12v", frame_material: "Carbon", year_of_purchase: "2018", wheels: "fulcrum", aestetic_condition: "Brand New", mechanical_condition: "In perfect condition, ready to roll", has_pedals: true, original_receipt: false, im_a_shop: false, negotiable_price: false, price: 2750.00, group: "shimano 105"})
bike.save

photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5baff515f3747d0f88d3fe0c/products/W800-AAR1XDQHOK.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5baff515f3747d0f88d3fe0c/products/W800-Y7QH1A7PL5.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5baff515f3747d0f88d3fe0c/products/W800-TWLMVKKXVP.jpeg", bike_id: 4})
photo.save
photo = Photo.new({image_url: "https://bkie.s3.amazonaws.com/pd/user/5baff515f3747d0f88d3fe0c/products/W800-A6IWTAFAR8.jpeg", bike_id: 4})
photo.save