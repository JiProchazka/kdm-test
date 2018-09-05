# KDM Test

Hi, this is a simple Ruby on Rails test. Take as much time as you
need, do it as best as you can. Please commit small steps and often.

## Assesment

Create a new RoR project, using `javascript` instead of
`coffeescript`. Create 3 models - `Order`, `User` and `Product`. Order
can have multiple products, user can have multiple orders.

# Model

`Product` should have a field called `product_name` which should accept
only strings in format of `three big letters-three numbers` (i.e.`HJS-098`). Write test cases for that (Rspec or MiniTest, does not matter).

When saving `Order` or `Product` model, write a message to Rails log
about it, such as: 'Saving product 12345.'

When you create a new `Product`, all `User`s should receive an email
with it's description ('an advertisement').

Please supply a seed script that generates at least 100 products and 5
orders for 2 different users by the Seed, so we can easily run the
project and have some data to try.


## Homepage

On the homepage create a simple menu as an unordered list (horizontally
oriented) with links to the index pages for each model. For each model
create a whole CRUD (Create, Read, Update, Delete) without a Show
page. On the index page for `Product` create an AJAX search field and
filter the table, with pagination.

# Frontend

Use Bootstrap (3 or 4). You can restyle it a bit or add some eye-candy to show us your SCSS skills.

