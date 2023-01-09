# Good Bread (Depreciated)
### A social media React app for cooking and baking Recipes

## About
An old version of GoodBread that focused more on user interaction. No longer being updated and switched to a new repo that can be found [here](https://github.com/Rmiverson/goodbread-api).

In this app you can write recipes and post them. You can follow other people and see their recipies. Following people will put their recipes on to your homepage feed. You can like recipes, comment on recipies, and like other peoples comments on recipes. You can also search any recipe by title in the search tab. In the profile tab you can see your own profile as well as all the recipes you've written.

This is the API backend for the app, running Ruby on Rails.

## Resources used
* Ruby 3.0.0
* Ruby on Rails
* PostgreSQL
* bycrypt for password security
* JWT for requiring a login to access api information
* active_model_serializers
* Frontend information [here](https://github.com/Rmiverson/goodbread-frontend)

## Installing
### Pre-Requisites
* Ruby version 3.0.0 or higher
* latest version of Rails
* Working installation of PostgreSQL

### Installing
* Fork and clone the repository
* run 'bundle install'
* setup postgreSQL infor in 'database.yml' if necessary (usually if you're running windows)
* setup secret passcode in 'app/conrollers/application_conroller.rb' for password encrypting
* run 'rails db:migrate'
* run 'rails s'
* now you're ready to go!

## Contributors
Devloped and designed by [Riley M. Iverson](https://github.com/Rmiverson)
