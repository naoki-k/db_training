# frozen_string_literal: true

Training::User.create!(name: :yuu)
Training::User.create!(name: :nobu)
Training::User.create!(name: :isa)
Training::User.create!(name: :naga)
Training::User.create!(name: :kaku)

Training::User.all.each do |user|
  user.create_wallet(money: 500)
end

seven = Training::Store.create!(name: :seven)
seven.items.create!(name: :apple, price: 150).create_stock!(amount: 3)
seven.items.create!(name: :hot_dog, price: 200).create_stock!(amount: 5)
seven.items.create!(name: :beer, price: 200).create_stock!(amount: 4)

family_mart = Training::Store.create!(name: :family_mart)
family_mart.items.create!(name: :candy, price: 120).create_stock!(amount: 5)
family_mart.items.create!(name: :cola, price: 120).create_stock!(amount: 3)
family_mart.items.create!(name: :orange, price: 120).create_stock!(amount: 3)

lawson = Training::Store.create!(name: :lawson)
lawson.items.create!(name: :chicken, price: 210).create_stock!(amount: 3)
lawson.items.create!(name: :coffee, price: 110).create_stock!(amount: 4)
lawson.items.create!(name: :strawberry, price: 360).create_stock!(amount: 3)

mini_stop = Training::Store.create!(name: :mini_stop)
mini_stop.items.create!(name: :potato, price: 120).create_stock!(amount: 3)
mini_stop.items.create!(name: :soda, price: 120).create_stock!(amount: 3)
mini_stop.items.create!(name: :cake, price: 270).create_stock!(amount: 2)
