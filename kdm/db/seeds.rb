Product.delete_all
Order.delete_all
User.delete_all

SEEDS_USERS = %w[ piotr.wydrzycki@gmail.com, miles.davis@yahoo.com, carlos.jobim@google.com]

# SEEDS_USERS.each do |user|
#   User.create(email: user, password: "password")
piotr = User.create!(	{ email: 'piotr.wydrzycki@gmail.com', password: 'password'} )
miles = User.create!(	{ email: 'miles.davis@yahoo.com', password: 'password' })
carlos = User.create!(	{ email: 'carlos.jobim@google.com', password: 'password' })


order1 = Order.create!({user_id: piotr.id, name: "Piotrek first Order"})
order2 = Order.create!({user_id: piotr.id, name: "second Piotrek Order"})
order3 = Order.create!({user_id: carlos.id, name: "Carlos Jobim Pack"})
order4 = Order.create!({user_id: carlos.id, name: "Carlo Pack"})
order5 = Order.create!({user_id: miles.id, name: "Order from Miles"})


10.times {|x| Product.create(order_id: order1.id, product_name: "PKP-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order2.id, product_name: "RTV-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order3.id, product_name: "AGD-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order4.id, product_name: "FBI-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order5.id, product_name: "CIA-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order5.id, product_name: "KGB-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order4.id, product_name: "KRK-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order3.id, product_name: "WWA-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order2.id, product_name: "HEX-00#{x}", description: "description #{x}")}
10.times {|x| Product.create(order_id: order1.id, product_name: "SLD-00#{x}", description: "description #{x}")}
