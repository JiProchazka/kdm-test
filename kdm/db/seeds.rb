Order.create!([
  {user_id: 5, name: "Piotrek first Order"},
  {user_id: 5, name: "second Piotrek Order"},
  {user_id: 6, name: "Carlos Jobim Pack"},
  {user_id: 6, name: "Carlo Pack"},
  {user_id: 7, name: "Order from Miles"}
])
Product.create!([
  {product_name: "MKL-987", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", order_id: 9}
])
User.create!([
  {email: "piotrek.wydrzycki@gmail.com", password_digest: "$2a$10$gAg7Ol/ERJLMk/R3fLoxWuWQwIQylZrWH57Tg1yNhH4rFlR4TCuNm"},
  {email: "carlos.jobim@alfabet.com", password_digest: "$2a$10$LFy6YXPja3XaMC1BnPKqZuXeVfVOHcvlOQDjvCiSTGCwyLNqmJRx6"},
  {email: "miles.davis@yahoo.com", password_digest: "$2a$10$WJv9MgrCmRWH9ksBAtqkGOtFKmEmqzorg0Qqr1dlfE88gigFzHTcG"}
])
