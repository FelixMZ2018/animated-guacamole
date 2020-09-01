# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
test_acc = User.new(email: "test@marc.de",password: "password")
test_acc.save
test_acc.user_preference.address = "Berlin"
test_acc.user_preference.save
WardrobeTemplate.destroy_all
WardrobeTemplate.create(category: "Sweatshirt",rendering_group: "top")
WardrobeTemplate.create(category: "Trousers", rendering_group: "bottom")
WardrobeTemplate.create(category: "T-Shirt",rendering_group: "top")
WardrobeTemplate.create(category: "Jacket",rendering_group: "top")
WardrobeTemplate.create(category: "Shorts",rendering_group: "bottom")
WardrobeTemplate.create(category: "Hoodie",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187' version='1.1'><g id='Hoodie' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path cla d='M122.731734,9.58031077 L131.216685,7.34914009 C165.5935,32.1628362 183.361709,84.0563407 224.996623,108.72736 L216.58973,121.240539 C147.889238,118.771641 125.383314,55.5469019 122.731734,9.58031077 Z' id='Coat-Back' fill='**COLOR**' transform='translate(173.864178, 64.294840) rotate(5.000000) translate(-173.864178, -64.294840) '/><path d='M90,114 C124.671756,114 150.175573,114 166.511451,114 C170.007634,114 169.348845,108.951637 168.84345,106.404206 C163.010588,77.0037663 140.241304,45.3115155 140.241304,3.4607303 L118.1718,0 C99.917485,29.3584068 93.6048263,65.5045499 90,114 Z' id='Shirt' fill='#DDE3E9'/><path d='M90.6148413,28.8579585 C87.4095228,27.9365884 84.8712423,25.7876656 83,22.4111902 C74.933557,7.85607578 77.8467271,-0.157592785 86.4671964,-2.7917309 C95.0876658,-5.42586901 102.775319,-2.04281037e-14 116.510031,-7.10542736e-15 C117.257085,-6.21724894e-15 117.941303,0.0468325343 118.562683,0.140497603 L125.471587,0.534739944 C145.293986,67.7151944 150.760885,112.536948 141.872285,135 L81.6518141,135 C78.0838152,143.319871 74.6695413,150.319871 71.4089926,156 L55,156 C53.4556832,106.067091 65.327297,63.6864104 90.6148413,28.8579585 Z' id='Coat-Front' fill='**COLOR**'/><path d='M94.7652287,100.497634 C96.6591508,116.344024 99.7374079,127.844812 104,135 L81.6518141,135 C85.813785,125.295103 90.1849231,113.794314 94.7652283,100.497633 Z' id='Shade' fill-opacity='0.1' fill='#000000'/></g></svg>")