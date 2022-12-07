puts "☕️ Seeding additional info..."
# AdditionalInfo.create!(id: 1, process: "natural", origin: "TBD", altitude: "3,000-4,000ft", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")


puts "☕️ Seeding products..."
Product.create!(id: 1, title: "Tis the Season", featured: true, stock: true, roast: "Blend", single_origin: false, description: "Every holiday season, you go out of your way to get the biggest turkey, the tastiest cakes, and the fanciest coffees for your family...only for your family to take a massive dump on everything. That's why we created this coffee: Featuring a blend of our oldest, cheapest coffees in a basic-b bag, you can look like you're treating your guests without actually treating them. Let them trash-talk while they eat your food and criticize the home you spent all night cleaning just for them. It only cost $6! Tis the Season: They don't deserve the good stuff. Because they're trash.", price: 6, tasting_notes: "Criticism, Disappointment, Regret.", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 2, title: "The Good Stuff", featured: true, stock: true, roast: "Medium", single_origin: false, description: "It's the holidays and we all know that means: family. Bitter, critical family giving you looks whenever you eat a dinner roll and asking why you're still single, childless, or gay. Or maybe you're alone, and you'll be sitting in a diner on Christmas Eve wondering what went wrong. Either way, this coffee is for you: a cozy blend of our most popular seasonal coffees in our (probably vain) attempts to rienstill some winter cheer to these difficult months. It's been a long year and you're still here, doing the best you can. You deserve the good stuff, whether you believe it or not. All orders come with a seasonal mug and a virtual hug: may next year bring more real ones.", price: 10, tasting_notes: "Brown Sugar, Spices, Hope.", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 3, title: "Memories", featured: false, stock: true, roast: "Light", single_origin: false, description: "Iced tea on the porch with grandma. Building legos with siblings or friends on sunday afternoons. Christmas morning when Christmas mornings were good. Everyone has a few good memories, even if they're sometimes few and far between. Let this cup of coffee create more good memories, whether its shared with loved ones or enjoyed alone on quiet mornings, perhaps with loved books.", price: 17, tasting_notes: "Delicate Florals, Stone Fruit, Spices", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 4, title: "Fig's Finest", featured: true, stock: true, roast: "Blend", single_origin: false, description: "Fig works here. Fig has anxiety issues. Fig stays up late into the night, looking for that perfect roast, blend, and grind. Who is Fig, if Fig can't find that perfect coffee? What is Fig's worth, without that perfect coffee? Can anyone love Fig if Fig can't make that perfect cup of coffee? So Fig works very hard to make that perfect cup of coffee. Featuring: Fig's Finest, the finest coffee that anxiety can make. It turns out, that's pretty fine coffee.", price: 18, tasting_notes: "Candied Citrus, Chocolate, Self-Worth", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 5, title: "Dark Mirror", featured: false, stock: true, roast: "Dark", single_origin: false, description: "Finally, a coffee as black as your soul. A coffee as black as the blackest night, which you are enjoying with your black coffee. Gaze into your mug and see your reflection in the black. You look tired. You have such heavy bags under your eyes. You need more coffee.", price: 14, tasting_notes: "Cloves, Bittersweet Chocolate, Self-Loathing", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 6, title: "By a Thread", featured: false, stock: true, roast: "Medium", single_origin: false, description: "When the daily grind grinds you down. When you're at the edge, hanging by a thread. When you just need a moment--here is your moment. A gentle medium roast made from a blend of our coziest beans to remind you that it's okay to take that moment.", price: 14, tasting_notes: "Spices, Toffee, Peace", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 7, title: "3AM", featured: false, stock: true, roast: "Dark", single_origin: true, description: "Up late again, huh? We get it. Work goes late. Scrolling through TikTok goes late. And now its 3Am and you need to be up in a few hours. You heard that some sleep is better than no sleep, but you know you'll sleep through your alarm again. Plus, there's stuff to do. You'll sleep tomorrow--or this weekend. Might as well pour a cup of strong, dark coffee for the long, dark night ahead.", price: 15, tasting_notes: "Caramel, Baking Spices, Cocoa, Insomnia", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")


Product.create!(id: 8, title: "Here, There, & Everywhere", featured: false, stock: true, roast: "Light", single_origin: true, description: "They say travel is the best cure for the blues. But that takes money. And time off work. And your couch is just so cozy. Let us bring the travel to you. Each bag is full of specially chosen single origin beans from here, there, and everywhere. Each mug is like a trip unto itself, letting you enjoy a taste of travel from the comfort of your very cozy couch.", price: 18, tasting_notes: "Adventure", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

Product.create!(id: 9, title: "Blonde Distraction", featured: false, stock: false, roast: "Light", single_origin: false, description: "A lightly roasted, summery coffee. It's downright distracting, with its long beans and golden hue. Most things are distracting: you probably haven't even finished reading this description because you got distracted. But you won't be distracted from this coffee. No: this coffee will be the distraction.", price: 17, tasting_notes: "Toasted Almonds, Peaches, Temptation", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg")

# Product.create!(id: 10, title: "Sunny Days Ahead", featured: "true", inStock: true, roast: "Light", single_origin: "true", description: "TBD", price: 15, tasting_notes: "Berries, Sweet Lemon, Honey, Sunlight", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg", additional_infos: 1)

# Product.create!(id: 11, title: "Bone Daddy", featured: "", inStock: true, roast: "Dark", single_origin: "false", description: "", price: , tasting_notes: "", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg", additional_infos: 1)

# Product.create!(id: 12, title: "Paris", featured: "false", inStock: true, roast: "Dark", single_origin: "true", description: "", price: , tasting_notes: "", image_url: "https://zippypixels.com/wp-content/uploads/2018/03/Plain-packaging-pouch-mockup.jpg", additional_infos: 1)

puts "seeding Users..."
User.create(id: 1, first_name: "Maria", last_name: "Ameen", email: "LifelineCoffee@gmail.com", password_digest: "password1", username: "admin", admin: true)

User.create!(id: 2, first_name: "Megan", last_name: "Ingenito", email: "MIngenito@gmail.com", password_digest: "password2", username: "CoffeeHuman", admin: false)

puts "seeding Carts..."
Cart.create!(id: 1, user_id: 1, active: true)

puts "seeding CartItems..."
CartItem.create!(id: 1, cart_id: 1, product_id: 1, quantity: 1)

