# KDM Test
Hi, this is a simple Ruby on Rails test. Take as much time as you need, do it as best as you can.
Please commit small steps and often.

## Assesment
Create a new RoR project, using `javascript` instead of `coffee script`.
Create 3 models - `Order`, `User` and `Product`. Order can have multiple products, user can have multiple orders.

When saving `Order` or `Product` model, write to a development log the name of the class and ID of the model (if the model is new write a string `"New"`).

`Product` should have a field named `product_name` which should accept only strings in format of `three big letters-three numbers` (f.e. `HJS-098`).

On the homepage create a simple menu as an unordered list (horizontaly oriented) with links to the index pages for each model. 
For each model create a whole CRUD (Create, Read, Update, Delete) without a Show page. On the index page for `Product` create an ajax search field and filter the table.

Please generate 200 products and 5 orders for 2 different users by the Seed, so we can easily run the project and have some data to try.

Include tests.
