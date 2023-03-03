# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin = User.new(email: 'admin1@email.com', password: 'password', role: :admin, username: 'Admin1')
admin.skip_confirmation!
admin.save

5.times do |n|
  user = User.new(email: "user#{n}@email.com", password: 'password', username: "Username#{n}")
  user.skip_confirmation!
  user.save(validate: false)
  
  2.times do
    dish_name = 3.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
    ingredient = 15.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
    direction = 20.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
    suggestion = 10.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")

    recipe = Recipe.new(user:, dish_name:, ingredient:, direction:, suggestion:)
    recipe.banner.attach( io:  File.open(File.join(Rails.root,'app/assets/images/sample_banner.png')), filename: 'sample_banner.png')
    recipe.save(validate: false)
  end
end

user5 = User.new(email: "user5@email.com", password: 'password', username: "IamNum5")
user5.image.attach( io:  File.open(File.join(Rails.root,'app/assets/images/5.jpg')), filename: '5.jpg')
user5.skip_confirmation!
user5.save(validate: false)

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
  '1. Begin by choosing a pot that’s big enough to fit the chicken and pork adobo. Bring the pot to medium high heat and sauté the garlic and onions in hot oil.
  2. Add the chicken pieces into the pot and sear on all sides. Searing means to brown the meat in high heat. This adds flavour and color to the meat. Make sure that the meat pieces are not wet or you will not achieve the desired color you are looking for. You can do this in batches so you do not overcrowd the pot because the juices from the meat will run out and thus prevent the browning effect of the meat. Add the pork and sear as well.
  3. The next step is to pour the vinegar, soy sauce, bay leaves, pepper, water, Knorr Chicken Cube. Bring this up to a boil over high heat then lower the fire to a simmer. Do not cover your pot or you will end up with a raw vinegar taste. This will take about 20 minutes.
  4. For a more flavour-filled adobo, remove the chicken and pork pieces from the pot and fry this separately in another pan for about 2-3 minutes. When done, throw in the fried meat pieces into the pot, add the sugar and simmer for another 6 minutes or until the sauce has reached a syrup-like consistency. To add fiber into your dish, add sliced Bok-Choi last and cook for 2 minutes. 
  5. This all-time classic dish is now ready to be enjoyed by the whole family with a bowl of steaming rice. ', suggestion: "Enjoy!!!")
recipe5.banner.attach( io:  File.open(File.join(Rails.root,'app/assets/images/adobo.jpg')), filename: 'adobo.jpg')
recipe5.save(validate: false)

user6 = User.new(email: "user6@email.com", password: 'password', username: "Num6Iam")
user6.image.attach( io:  File.open(File.join(Rails.root,'app/assets/images/6.jpg')), filename: '6.jpg')
user6.skip_confirmation!
user6.save(validate: false)

recipe6 = Recipe.new(user: user6, dish_name: 'Kare-Kare', ingredient: 
  '3 lbs oxtail cut in 2 inch slices you an also use tripe or beef slices
  1 piece small banana flower bud sliced
  1 bundle pechay or bok choy
  1 bundle string beans cut into 2 inch slices
  4 pieces eggplants sliced
  1 cup ground peanuts
  1/2 cup peanut butter
  1/2 cup shrimp paste
  34 Ounces water about 1 Liter
  1/2 cup annatto seeds soaked in a cup of water
  1/2 cup toasted ground rice
  1 tbsp garlic minced
  1 piece onion chopped
  salt and pepper', direction: 
  '1. In a large pot, bring the water to a boil
  2. Put in the oxtail followed by the onions and simmer for 2.5 to 3 hrs or until tender (35 minutes if using a pressure cooker)
  3. Once the meat is tender, add the ground peanuts, peanut butter, and coloring (water from the annatto seed mixture) and simmer for 5 to 7 minutes
  4. Add the toasted ground rice and simmer for 5 minutes
  5. On a separate pan, saute the garlic then add the banana flower, eggplant, and string beans and cook for 5 minutes
  6. Transfer the cooked vegetables to the large pot (where the rest of the ingredients are)
  7. Add salt and pepper to taste.', 
  suggestion: "Serve hot with shrimp paste. Enjoy!")
recipe6.banner.attach( io:  File.open(File.join(Rails.root,'app/assets/images/karekare.jpg')), filename: 'karekare.jpg')
recipe6.save(validate: false)

user7 = User.new(email: "user7@email.com", password: 'password', username: "thisIsMe")
user7.image.attach( io:  File.open(File.join(Rails.root,'app/assets/images/7.jpg')), filename: '7.jpg')
user7.skip_confirmation!
user7.save(validate: false)

recipe7 = Recipe.new(user: user7, dish_name: 'Homemade Croissants', ingredient: 
  'For the Détrempe (dough)
  4⅔ cups/605 grams all-purpose or bread flour, plus more for dusting
  ⅓ cup/66 grams granulated sugar
  1 tablespoon plus ½ teaspoon/12 grams kosher salt
  2¼ teaspoons/7 grams active dry yeast
  ¾ cup plus 2 tablespoons/214 grams water, at room temperature
  ½ cup/120 grams whole milk, at room temperature
  ¼ cup/57 grams unsalted butter, cut into ½-inch pieces, chilled
  For the Butter Block and Assembly
  1½ cups/340 grams unsalted European or European-style butter (3 sticks), chilled
  All-purpose flour, for rolling
  1 large egg yolk
  1 tablespoon heavy cream', direction: 
  '1. make easy dough from butter, flour, sugar, salt, yeast, and milk
  2. roll out dough into a large rectangle
  3. make the butter layer
  4. enclose the butter layer inside the dough
  5. roll out the dough into another large rectangle, then fold it back together
  6. roll out the dough again, fold it back together again
  7. roll out the dough one more time, fold it back together
  8. shape the croissants 
  9. bake', 
  suggestion: "Croissants are best within an hour or two of baking. After that, revive the croissants by warming in a 350-degree oven for 5 to 8 minutes. Keep wrapped airtight at room temperature.")
recipe7.banner.attach( io:  File.open(File.join(Rails.root,'app/assets/images/quaso.jpg')), filename: 'quaso.jpg')
recipe7.save(validate: false)

user8 = User.new(email: "user8@email.com", password: 'password', username: "MrIcanCook")
user8.image.attach( io:  File.open(File.join(Rails.root,'app/assets/images/8.jpg')), filename: '8.jpg')
user8.skip_confirmation!
user8.save(validate: false)

recipe8 = Recipe.new(user: user8, dish_name: 'Pork Dinakdakan Recipe', ingredient: 
  '2 lbs. liempo pork belly
  ½ cup Lady’s Choice Mayonnaise
  3 tablespoons Knorr Liquid Seasoning
  2 to 3 pieces lime or 5 to 6 pieces calamansi
  2 pieces red onion sliced into thin pieces
  10 pieces Thai chili peppers chopped
  3 pieces long green pepper sliced
  1 teaspoon onion powder optional
  Salt and ground black pepper to taste
  1 ½ quarts water', direction: 
  '1. Boil water in a cooking pot.
  2. Add pork belly. Cover and continue to boil in medium heat for 30 to 35 minutes.
  3. Remove the pork belly from the pot. Let it cool. Note: you may use the pork stock (water used to boil liempo) to cook other dishes.
  4. Rub 1 teaspoon salt and ½ teaspoon ground black pepper over the pork belly. Let it stay for 10 minutes.
  5. Heat-up the grill. Grill each side for a total of 6 minutes. Note: I usually grill one side for 2 minutes, turn the belly over and grill the opposite side for the same time. The process is repeated 2 to 3 times. This will prevent the pork belly from being burnt.
  6. Slice the pork belly into thin pieces and arrange in a large mixing bowl.
  7. Prepare the dressing by combining mayonnaise, Knorr Liquid Seasoning, lime juice, and onion powder in a small bowl. Stir until well blended. Set aside.
  8. Put the onion and chili peppers on the bowl with the sliced pork belly. Toss.
  9. Add the dressing. Continue to toss until well blended. Add Salt and pepper to taste.
  10. Transfer to a serving bowl. Serve!', 
  suggestion: "Share and enjoy!")
recipe8.banner.attach( io:  File.open(File.join(Rails.root,'app/assets/images/dinakdakan.jpg')), filename: 'dinakdakan.jpg')
recipe8.save(validate: false)

user9 = User.new(email: "user9@email.com", password: 'password', username: "MrsIcanCook")
user9.image.attach( io:  File.open(File.join(Rails.root,'app/assets/images/9.jpg')), filename: '9.jpg')
user9.skip_confirmation!
user9.save(validate: false)

recipe9 = Recipe.new(user: user9, dish_name: 'Peach Mango Pie', ingredient: 
  '1 cup canned peaches - cut into cubes,
  1 cup ripe mango - cut into cubes,
  1 tablespoon cornstarch,
  ¼ cup sugar,
  dash of salt,
  5 tablespoons peach syrup,
  1 puff pastry sheet,
  oil - for deep frying', direction: 
  '1. In a small bowl, mix the cornstarch and sugar together.
  2. In a saucepan or small pot, combine the peaches, mangoes, sugar-cornstarch mix, salt, and the syrup from canned peaches. Mix well. Bring to a simmer over medium heat and continue cooking for 3-5 minutes or until it becomes really thick like jam.
  3. Remove from heat and let it cool down to room temperature.
  4. Lay the puff pastry on a flat surface. Scoop three separate spoonfuls of the filling and lay it on top the puff pastry sheets as shown in the photos. Fold the pastry sheet over the fillings and push the edges down to close in the fillings. Cut into three pocket pies and seal the edges.
  5. Lay the puff pastry on a flat surface. Scoop three separate spoonfuls of the filling and lay it on top the puff pastry sheets as shown in the photos. Fold the pastry sheet over the fillings and push the edges down to close in the fillings. Cut into three pocket pies and seal the edges.
  6. Heat enough oil for deep frying over medium heat. Fry the pocket pies in hot oil while still frozen, 3-4 pieces at a time until golden and crisp, about 3-5 minutes. Transfer cooked pocket pies on a plate lined with paper towels to rid of excess oil.', 
  suggestion: "If you prefer to have them baked instead of fried. Place pocket pies on a baking sheet lined with parchment paper in a single layer. Brush each with the egg wash to make them shiny and brown after baking. Poke (3-5) small holes on each using a toothpick or fork to let the steam out and prevent them from bursting open while baking. Bake at 360°F/180°C for 18-20 minutes or until they appear light brown and shiny.")
recipe9.banner.attach( io:  File.open(File.join(Rails.root,'app/assets/images/peach-mango-pie.jpg')), filename: 'peach-mango-pie.jpg')
recipe9.save(validate: false)