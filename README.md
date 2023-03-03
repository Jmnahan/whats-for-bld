# What's for BLD? (Breakfast-Lunch-Dinner? 🍛 ) 
A Ruby on rails one stop shop blog app for users that wanted share and experience other cultures through food recipes.

Food culture is an integral part of our society and represents our unique history and traditions. However, with the rise of globalization and homogenization, many food recipes are at risk of being lost. A food blog application can play a significant role in preserving food culture by providing a platform for sharing and celebrating different recipes and culinary practices.

For our final project, We plan to develop a food blog application that brings together food enthusiasts and content creators in a single platform. The application will allow users to browse and search for a variety of food-related content.

In addition, the application will feature a social networking aspect, allowing users to interact with each other through comments and likes. Users will also be able to create their own profiles, where they can showcase their favorite recipes and connect with other food enthusiasts.

For exploring around our app kindly check [db/seeds.rb](https://github.com/Jmnahan/whats-for-bld/blob/main/db/seeds.rb) for the initial data

### Deployed at: [Render](https://bld-testing.onrender.com/)
#### Current deployment issues: 

- sign-up email confirmation is currently not implemented
- some img assets are showing as broken image
- edaman api current implementation can only retrieve nutritions for one ingredient at a time


### Ruby version

  - Ruby 3.1.2

### System dependencies

  - Ransack 4.0
  - Tailwindcss-rails 2.0
  - Edamam-ruby

### Configuration

  ```ruby
  bundle install
  ```
  
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

---
### Usage and features

 - Login as user or an admin
  ```
    email: admin1@email.com
    password: password
  ``` 
  
  ```
    email: user2@email.com
    password: password
  ```
 - Admin role can view and delete users, recipes, and comments 

![Admin](https://user-images.githubusercontent.com/71342762/222748063-15cde717-6c0f-4298-b7dc-a8a9202a28c9.png)

 - Users can create, read, update, and delete recipes
 
![User](https://user-images.githubusercontent.com/71342762/222748442-c57ab436-b405-49d6-92e5-35e0d949a27f.png)

- Upload banners for their recipes

![Banner](https://user-images.githubusercontent.com/71342762/222752287-a79ea503-48f8-4f4c-8ad8-1664377e3474.png)

- Search for a certain recipe

![Search](https://user-images.githubusercontent.com/71342762/222752722-409d191d-6a7c-4c29-9ad4-15d374b603b6.png)

- Get nutrition analysis based on ingredients

![Nutrition](https://user-images.githubusercontent.com/71342762/222753108-ace54610-1131-4469-be9b-e0fe384193b4.png)

- Like and unlike the recipes

![image](https://user-images.githubusercontent.com/71342762/222751192-8e83a906-008d-4517-bfeb-26fc8068f081.png)

- Leave and delete comments 

![Comment](https://user-images.githubusercontent.com/71342762/222751659-68bfa0bf-f52d-4561-8d54-083a44f83bac.png)

- Edit their user profile

![EditUser](https://user-images.githubusercontent.com/71342762/222755509-1656499b-75db-4006-9f31-61171c760166.png)
