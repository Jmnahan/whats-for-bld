unless User.exists?(email: 'admin1@email.com')
  admin = User.new(email: 'admin1@email.com', password: 'password', role: :admin, username: 'Admin1')
  admin.skip_confirmation!
  admin.save
end

5.times do |n|
  unless User.exists?(email: "user#{n}@email.com")
    user = User.new(email: "user#{n}@email.com", password: 'password', username: "Username#{n}")
    user.skip_confirmation!
    user.save(validate: false)

    2.times do
      dish_name = 3.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
      ingredient = 15.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
      direction = 20.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
      suggestion = 10.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")

      recipe = Recipe.new(user:, dish_name:, ingredient:, direction:, suggestion:)
      recipe.banner.attach(io: File.open(File.join(Rails.root, 'app/assets/images/sample_banner.png')), filename: 'sample_banner.png')
      recipe.save(validate: false)
    end
  end
end

[
  { email: 'user5@email.com', username: 'IamNum5',     image: '5.jpg' },
  { email: 'user6@email.com', username: 'Num6Iam',     image: '6.jpg' },
  { email: 'user7@email.com', username: 'thisIsMe',    image: '7.jpg' },
  { email: 'user8@email.com', username: 'MrIcanCook',  image: '8.jpg' },
  { email: 'user9@email.com', username: 'MrsIcanCook', image: '9.jpg' },
].each do |attrs|
  unless User.exists?(email: attrs[:email])
    u = User.new(email: attrs[:email], password: 'password', username: attrs[:username])
    u.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images', attrs[:image])), filename: attrs[:image])
    u.skip_confirmation!
    u.save(validate: false)
  end
end

user5 = User.find_by(email: 'user5@email.com')
user6 = User.find_by(email: 'user6@email.com')
user7 = User.find_by(email: 'user7@email.com')
user8 = User.find_by(email: 'user8@email.com')
user9 = User.find_by(email: 'user9@email.com')

unless Recipe.exists?(dish_name: 'Chicken Adobo')
  recipe5 = Recipe.new(user: user5, dish_name: 'Chicken Adobo', ingredient:
    '2 tsp oil, canola
    6 cloves garlic, crushed
    1 pc onion, sliced
    750 g chicken cut ups
    250 g pork liempo cut into 1-inch pieces
    3 tbsp vinegar
    ¼ cup soy sauce
    2 pcs bay leaves
    1 tsp whole black peppercorns, slightly crushed
    1 cup water
    1 pc Knorr chicken cube
    1 tsp brown sugar, packed
    OPTIONAL: 2 bundle Bok-Choi, sliced thinly', direction:
    '1. Begin by choosing a pot that\'s big enough to fit the chicken and pork adobo. Bring the pot to medium high heat and sauté the garlic and onions in hot oil.
    2. Add the chicken pieces into the pot and sear on all sides.
    3. Pour the vinegar, soy sauce, bay leaves, pepper, water, Knorr Chicken Cube. Bring to a boil then lower to simmer for 20 minutes.
    4. Remove chicken and pork, fry separately for 2-3 minutes, return to pot, add sugar and simmer 6 more minutes.
    5. This all-time classic dish is now ready to be enjoyed with a bowl of steaming rice.', suggestion: "Enjoy!!!")
  recipe5.banner.attach(io: File.open(File.join(Rails.root, 'app/assets/images/adobo.jpg')), filename: 'adobo.jpg')
  recipe5.save(validate: false)
end

unless Recipe.exists?(dish_name: 'Kare-Kare')
  recipe6 = Recipe.new(user: user6, dish_name: 'Kare-Kare', ingredient:
    '3 lbs oxtail cut in 2 inch slices,
    1 piece small banana flower bud sliced,
    1 bundle pechay or bok choy,
    1 bundle string beans cut into 2 inch slices,
    4 pieces eggplants sliced,
    1 cup ground peanuts,
    1/2 cup peanut butter,
    1/2 cup shrimp paste,
    34 Ounces water,
    1/2 cup annatto seeds soaked in a cup of water,
    1/2 cup toasted ground rice,
    1 tbsp garlic minced,
    1 piece onion chopped,
    salt and pepper', direction:
    '1. In a large pot, bring the water to a boil
    2. Put in the oxtail followed by the onions and simmer for 2.5 to 3 hrs or until tender
    3. Add the ground peanuts, peanut butter, and coloring and simmer for 5 to 7 minutes
    4. Add the toasted ground rice and simmer for 5 minutes
    5. Saute garlic then add the banana flower, eggplant, and string beans and cook for 5 minutes
    6. Transfer the cooked vegetables to the large pot
    7. Add salt and pepper to taste.', suggestion: "Serve hot with shrimp paste. Enjoy!")
  recipe6.banner.attach(io: File.open(File.join(Rails.root, 'app/assets/images/karekare.jpg')), filename: 'karekare.jpg')
  recipe6.save(validate: false)
end

unless Recipe.exists?(dish_name: 'Homemade Croissants')
  recipe7 = Recipe.new(user: user7, dish_name: 'Homemade Croissants', ingredient:
    '4⅔ cups all-purpose flour,
    ⅓ cup granulated sugar,
    1 tablespoon kosher salt,
    2¼ teaspoons active dry yeast,
    ¾ cup plus 2 tablespoons water,
    ½ cup whole milk,
    ¼ cup unsalted butter chilled,
    1½ cups unsalted European butter chilled,
    1 large egg yolk,
    1 tablespoon heavy cream', direction:
    '1. Make dough from butter, flour, sugar, salt, yeast, and milk
    2. Roll out dough into a large rectangle
    3. Make the butter layer
    4. Enclose the butter layer inside the dough
    5. Roll out and fold the dough 3 times
    6. Shape the croissants
    7. Bake', suggestion: "Best within an hour or two of baking. Reheat in a 350-degree oven for 5 to 8 minutes.")
  recipe7.banner.attach(io: File.open(File.join(Rails.root, 'app/assets/images/quaso.jpg')), filename: 'quaso.jpg')
  recipe7.save(validate: false)
end

unless Recipe.exists?(dish_name: 'Pork Dinakdakan Recipe')
  recipe8 = Recipe.new(user: user8, dish_name: 'Pork Dinakdakan Recipe', ingredient:
    '2 lbs. liempo pork belly,
    1/2 cup Mayonnaise,
    3 tablespoons Knorr Liquid Seasoning,
    2 to 3 pieces lime or calamansi,
    2 pieces red onion sliced,
    10 pieces Thai chili peppers chopped,
    3 pieces long green pepper sliced,
    Salt and ground black pepper to taste,
    1 1/2 quarts water', direction:
    '1. Boil water and add pork belly. Cook for 30 to 35 minutes.
    2. Remove pork belly and let cool.
    3. Rub salt and pepper over the pork belly and let sit for 10 minutes.
    4. Grill each side for a total of 6 minutes.
    5. Slice pork belly thin and arrange in a large mixing bowl.
    6. Combine mayonnaise, seasoning, lime juice for dressing.
    7. Add onion and chili peppers to pork belly, toss with dressing.
    8. Transfer to a serving bowl. Serve!', suggestion: "Share and enjoy!")
  recipe8.banner.attach(io: File.open(File.join(Rails.root, 'app/assets/images/dinakdakan.jpg')), filename: 'dinakdakan.jpg')
  recipe8.save(validate: false)
end

unless Recipe.exists?(dish_name: 'Peach Mango Pie')
  recipe9 = Recipe.new(user: user9, dish_name: 'Peach Mango Pie', ingredient:
    '1 cup canned peaches cut into cubes,
    1 cup ripe mango cut into cubes,
    1 tablespoon cornstarch,
    1/4 cup sugar,
    dash of salt,
    5 tablespoons peach syrup,
    1 puff pastry sheet,
    oil for deep frying', direction:
    '1. Mix cornstarch and sugar together.
    2. Combine peaches, mangoes, sugar-cornstarch mix, salt, and syrup. Simmer for 3-5 minutes until thick.
    3. Let cool to room temperature.
    4. Lay puff pastry flat, scoop filling, fold and seal into pocket pies.
    5. Fry in hot oil until golden and crisp, about 3-5 minutes.', suggestion: "Can also be baked at 360°F/180°C for 18-20 minutes.")
  recipe9.banner.attach(io: File.open(File.join(Rails.root, 'app/assets/images/peach-mango-pie.jpg')), filename: 'peach-mango-pie.jpg')
  recipe9.save(validate: false)
end

comment_texts = [
  "This looks absolutely delicious! Can't wait to try it.",
  "Made this last night and the whole family loved it!",
  "Great recipe, I added a little extra garlic and it was perfect.",
  "Simple and tasty, this is now a staple in our household.",
  "I've tried many versions of this dish, this one is the best.",
  "The directions were very clear and easy to follow.",
  "Turned out amazing! Will definitely make this again.",
  "I substituted some ingredients and it still came out great.",
  "My kids absolutely loved this, thank you for sharing!",
  "Perfect comfort food, highly recommend!"
]

users = User.all.to_a
recipes = Recipe.all.to_a

recipes.each do |recipe|
  next if Comment.where(recipe: recipe).count >= 3

  commenters = users.reject { |u| u.id == recipe.user_id }.sample(3)
  commenters.each do |user|
    Comment.create!(
      user: user,
      recipe: recipe,
      text: comment_texts.sample
    )
  end
end

recipes.each do |recipe|
  next if Like.where(recipe: recipe).count >= 3

  existing_likers = Like.where(recipe: recipe).pluck(:user_id)
  likers = users.reject { |u| u.id == recipe.user_id || existing_likers.include?(u.id) }.sample(3)
  likers.each do |user|
    Like.create!(user: user, recipe: recipe)
  end
end