# README

bundle install
rails db:create
rails db:migrate
rails db:seed
rails server


I also included docker if you prefer to use that.

docker-compose build
docker-compose up
docker-compose run web rails db:create
docker-compose run web rails db:migrate
docker-compose run web rails db:seed

Go to localhost:3000/programs/1/edit to test the _discount_rule.html.erb partial. 
I commented out the problem sections