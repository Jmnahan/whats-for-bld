# What's for BLD? (Breakfast-Lunch-Dinner?) 
A Ruby on rails one stop shop blog app for users that wanted share and experience other cultures through food recipes.

Food culture is an integral part of our society and represents our unique history and traditions. However, with the rise of globalization and homogenization, many food recipes are at risk of being lost. A food blog application can play a significant role in preserving food culture by providing a platform for sharing and celebrating different recipes and culinary practices.

For our final project, We plan to develop a food blog application that brings together food enthusiasts and content creators in a single platform. The application will allow users to browse and search for a variety of food-related content.

In addition, the application will feature a social networking aspect, allowing users to interact with each other through comments and likes. Users will also be able to create their own profiles, where they can showcase their favorite recipes and connect with other food enthusiasts.

For exploring around our app kindly check [db/seeds.rb](https://github.com/Jmnahan/whats-for-bld/blob/main/db/seeds.rb) for the initial data

### Ruby version

  Ruby 3.1.2

### System dependencies

  - Ransack 4.0
  - Tailwindcss-rails 2.0
  - Edamam-ruby

### Configuration

  ```ruby
  bundle install
  ```
  bundle install
  
### Database creation

  ```ruby
  rails db:create
  ```

### Database initialization

  ```ruby
  rails db:migrate
  rails db:seed
  ```

### How to run the test suite

  ```ruby
  bundle exec rspec
  ```