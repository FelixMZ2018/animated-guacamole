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
Item.destroy_all
WardrobeTemplate.destroy_all
Trip.destroy_all
WardrobeTemplate.create(category: "Hoodie",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187' version='1.1'><g id='Hoodie' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path cla d='M122.731734,9.58031077 L131.216685,7.34914009 C165.5935,32.1628362 183.361709,84.0563407 224.996623,108.72736 L216.58973,121.240539 C147.889238,118.771641 125.383314,55.5469019 122.731734,9.58031077 Z' id='Coat-Back' fill='**COLOR**' transform='translate(173.864178, 64.294840) rotate(5.000000) translate(-173.864178, -64.294840) '/><path d='M90,114 C124.671756,114 150.175573,114 166.511451,114 C170.007634,114 169.348845,108.951637 168.84345,106.404206 C163.010588,77.0037663 140.241304,45.3115155 140.241304,3.4607303 L118.1718,0 C99.917485,29.3584068 93.6048263,65.5045499 90,114 Z' id='Shirt' fill='#DDE3E9'/><path d='M90.6148413,28.8579585 C87.4095228,27.9365884 84.8712423,25.7876656 83,22.4111902 C74.933557,7.85607578 77.8467271,-0.157592785 86.4671964,-2.7917309 C95.0876658,-5.42586901 102.775319,-2.04281037e-14 116.510031,-7.10542736e-15 C117.257085,-6.21724894e-15 117.941303,0.0468325343 118.562683,0.140497603 L125.471587,0.534739944 C145.293986,67.7151944 150.760885,112.536948 141.872285,135 L81.6518141,135 C78.0838152,143.319871 74.6695413,150.319871 71.4089926,156 L55,156 C53.4556832,106.067091 65.327297,63.6864104 90.6148413,28.8579585 Z' id='Coat-Front' fill='**COLOR**'/><path d='M94.7652287,100.497634 C96.6591508,116.344024 99.7374079,127.844812 104,135 L81.6518141,135 C85.813785,125.295103 90.1849231,113.794314 94.7652283,100.497633 Z' id='Shade' fill-opacity='0.1' fill='#000000'/></g></svg>")
WardrobeTemplate.create(category: "Jacket",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187' version='1.1'><g id='Body/Jacket-2' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path d='M198,77.6170876 L234.234567,61.7041739 C240.582018,55.3790221 246.711387,50.5716141 252.622674,47.2819501 C254.390261,46.7192094 257.410101,46.5491987 254.188168,51.2551684 C250.966235,55.961138 247.78889,61.0560141 249.076289,62.7052963 C250.363689,64.3545786 254.093006,62.5342201 255.566345,65.2162765 C256.548571,67.0043141 250.262286,69.1431805 236.707491,71.6328758 L209.56994,92.4392868 L198,77.6170876 Z M51.5082829,82 L72,86.0658446 C51.3920824,124.471059 40.3404263,144.825845 38.8450319,147.130202 C35.4803944,152.315007 38.6196693,161.817238 39.7793043,166.821179 C32.5044044,168.51462 35.3734014,157.565005 26.1671562,159.851185 C17.7641225,161.937904 10.6393632,167.293169 2.8038784,160.07074 C1.84055159,159.182785 1.13535082,156.407288 4.41981989,154.983749 C12.6026301,151.437195 24.6920431,144.796343 26.6523424,142.218096 C29.3255608,138.702197 37.6108743,118.629498 51.5082829,82 Z' id='Skin' fill='#B28B67'></path><path d='M123.280247,9.87718027 L131.765198,7.64600959 C152.120135,24.2050747 163.602366,67.2616718 176.61267,71.9556463 C188.913385,76.3936093 205.208593,69.6320097 224.503164,60.7390322 L231.796052,73.8353428 C215.409826,95.0000245 178.298612,114.916545 161.84294,106.839809 C135.533742,93.9267871 125.046804,40.501408 123.280247,9.87718027 Z' id='Coat-Back' fill='**COLOR**' transform='translate(177.538150, 58.161768) rotate(5.000000) translate(-177.538150, -58.161768) '></path><path d='M90,114 C124.671756,114 150.175573,114 166.511451,114 C170.007634,114 169.348845,108.951637 168.84345,106.404206 C163.010588,77.0037663 140.241304,45.3115155 140.241304,3.4607303 L118.1718,0 C99.917485,29.3584068 93.6048263,65.5045499 90,114 Z' id='Shirt' fill='#DDE3E9'></path><path d='M82.3687546,84.2331696 C66.7713811,112.367832 53.6609446,132.623442 43.0374452,145 L27,141.85882 C37.3305927,77.7906722 67.2466105,30.5043988 116.748053,3.81764932e-14 L117,2.9470116e-14 L125.486398,0 C145.298923,67.5369477 150.760885,112.536948 141.872285,135 L73,135 C74.0896281,118.56345 77.5833963,101.181199 82.3687561,84.2331662 Z' id='Coat-Front' fill='**COLOR**'></path></g></svg>")
WardrobeTemplate.create(category: "Tshirt",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187'><g id='Tshirt' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path fill-rule='evenodd' clip-rule='evenodd' d='M259.032 98.8603C258.372 92.3926 258.114 84.6543 260.169 81.8828C263.94 76.7968 282.585 61.4218 282.585 61.4218L283.579 74.2523L287.992 59.1897C287.992 59.1897 292.88 60.6383 297.611 63.1138C301.833 65.3224 305.838 68.5044 307.587 69.7477C310.094 71.5297 302.806 98.9477 297.611 103.882C294.044 107.268 283.527 109.894 277.286 111.207C265.365 130.458 233.595 178.558 216.043 174.59C197.809 170.468 180.892 106.73 180.892 106.73L211.647 91.7479L225.038 133.021L259.032 98.8603V98.8603ZM50.0452 238.542L57.5308 257.686C57.5308 257.686 58.6679 262.615 59.3034 268.44C59.938 274.265 60.1818 277.808 64.0388 286.548C66.7268 292.638 58.0282 290.819 55.5613 287.417C53.0181 283.908 51.7317 269.524 47.5445 272.37C43.3573 275.217 42.0956 289.693 43.0323 303.362C43.1791 305.509 41.6883 307.262 40.6223 307.88C38.8932 308.881 36.3701 300.421 36.3701 300.421C36.3701 300.421 35.4626 303.394 32.7092 302.153C31.7345 301.713 28.8305 295.958 28.8305 295.958C28.8305 295.958 26.582 293.121 25.3994 289.954C23.3118 284.363 21.6074 273.985 22.0093 270.936C22.9584 263.749 25.0941 251.619 27.9015 244.899C26.2441 227.632 19.8906 158.307 23.3955 145.138C27.4068 130.07 35.2668 109.651 35.2668 109.651L65.4271 127.389L52.4976 154.992L50.0452 238.542V238.542ZM154.286 23.3187C154.286 23.3187 162.34 29.0107 168.356 39.1887C176.589 53.1127 172.285 65.1257 159.618 65.1457C146.057 65.1687 130.493 60.5527 123.932 40.0127C120.613 29.6227 117.478 21.5427 117.478 21.5427L154.286 23.3187Z' fill='#B28B67'/><path fill-rule='evenodd' clip-rule='evenodd' d='M298.19 63.5024C295.412 61.9101 292.769 60.7185 291.474 61.0206C289.207 61.5493 293.355 67.4933 296.381 71.4071L296.347 71.5565C291.463 73.5215 285.063 76.4352 284.034 78.5682C283.316 80.0576 286.122 80.5443 289.599 80.61C286.399 82.1445 283.607 83.8031 282.958 85.1502C282.126 86.8751 286.021 87.255 290.211 87.194C286.511 88.8822 283.044 90.8007 282.31 92.3221C281.375 94.2622 286.42 94.5008 291.138 94.3242L289.925 99.6236C289.554 101.249 288.074 102.377 286.408 102.304L268.306 101.512C266.152 101.418 264.61 99.3946 265.091 97.2926L277.917 41.2346C278.289 39.6096 279.768 38.4816 281.433 38.5546L299.536 39.3456C301.69 39.4406 303.231 41.4636 302.751 43.5656L298.19 63.5024V63.5024Z' fill='#020101'/><path fill-rule='evenodd' clip-rule='evenodd' d='M301.88 65.7759C298.039 63.2709 293.347 60.5836 291.474 61.0206C289.187 61.5539 293.429 67.5989 296.461 71.5105C291.563 73.4758 285.071 76.4185 284.034 78.5682C283.315 80.0576 286.122 80.5442 289.599 80.61C286.399 82.1444 283.607 83.8031 282.958 85.1502C282.126 86.875 286.021 87.255 290.211 87.1939C286.511 88.8821 283.044 90.8007 282.31 92.3221C281.072 94.8911 290.32 94.4767 295.407 94.0653L294.094 99.8052C293.723 101.43 292.243 102.558 290.577 102.485L272.475 101.694C270.321 101.6 268.779 99.5762 269.26 97.4742L282.086 41.4162C282.458 39.7912 283.937 38.6642 285.602 38.7362L303.705 39.5272C305.859 39.6222 307.4 41.6462 306.92 43.7472L301.88 65.7759Z' fill='**COLOR**'/><path fill-rule='evenodd' clip-rule='evenodd' d='M286.754 46.1633C286.332 48.0003 285.249 49.3053 284.334 49.0763C283.42 48.8473 283.02 47.1723 283.441 45.3353C283.863 43.4973 284.947 42.1933 285.861 42.4223C286.776 42.6513 287.176 44.3263 286.754 46.1633' fill='#020101'/><path fill-rule='evenodd' clip-rule='evenodd' d='M284.637 55.6704C284.215 57.5074 283.132 58.8124 282.217 58.5834C281.302 58.3544 280.903 56.6794 281.324 54.8424C281.746 53.0044 282.829 51.7004 283.744 51.9294C284.659 52.1584 285.059 53.8334 284.637 55.6704' fill='#020101'/><path fill-rule='evenodd' clip-rule='evenodd' d='M129.609 22.128L117.478 21.5427C117.478 21.5427 120.613 29.6227 123.932 40.0127C130.493 60.5527 146.057 65.1687 159.618 65.1457C172.285 65.1257 176.589 53.1127 168.356 39.1887C163.057 30.2241 156.177 24.7396 154.612 23.5593C170.607 24.6407 180.567 26.6488 189.79 35.2997C207.351 51.7707 221.571 82.1347 227.418 112.133L195.327 126.454L183.897 170.621L99.9119 169.341C99.9119 169.341 100.647 161.251 98.8359 149.561C96.4769 134.271 87.9609 122.861 87.9609 122.861L79.5139 135.701L26.9789 104.731C44.1779 73.3677 68.1679 41.0297 84.1629 30.7397C95.4627 23.4673 105.809 21.6419 115.918 21.5427C120.515 21.4976 125.131 21.8103 129.609 22.128Z' fill='**COLOR**'/><path opacity='0.202962' d='M184.272 171.388C187.48 130.645 208.685 121.03 192.685 75.3374' stroke='black' stroke-width='3'/><path opacity='0.202055' d='M154.286 23.3187C154.286 23.3187 162.34 29.0107 168.356 39.1887C176.589 53.1127 172.285 65.1257 159.618 65.1457C146.057 65.1687 130.493 60.5527 123.932 40.0127C120.613 29.6227 117.478 21.5427 117.478 21.5427' stroke='black' stroke-width='3'/><path opacity='0.202962' d='M109.531 94.3379L90.0441 123.863' stroke='black' stroke-width='3'/></svg>")
WardrobeTemplate.create(category: "Crop-Top",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187'><g id='Crop-Top' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path fill-rule='evenodd' clip-rule='evenodd' d='M225.441 244.99C216.835 230.99 188.801 184.584 187.162 171.564C185.109 155.255 186.951 134.195 186.951 134.195L213.175 118.585L219.809 157.404L246.839 242.242C252.146 248.481 258.808 256.467 259.761 258.337C261.374 261.508 264.36 277.205 264.218 280.306C264.075 283.407 254.774 297.343 254.774 297.343C249.002 295.929 252.772 288.732 252.772 288.732C252.772 288.732 247.602 293.104 245.453 293.03C225.213 292.34 226.298 282.092 226.776 280.809C227.851 277.927 233.254 281.223 233.254 281.223C233.254 281.223 222.671 259.752 225.441 244.99V244.99ZM42.1471 235.783L47.5241 258.197C47.5241 258.197 47.9381 263.297 47.6711 269.211C47.4051 275.126 47.0921 278.7 49.7841 288.041C51.6601 294.55 42.6991 291.341 40.6241 287.549C38.4841 283.639 39.4421 269.079 34.5261 271.249C29.6111 273.418 25.9301 287.661 24.7181 301.453C24.5271 303.62 22.6571 305.13 21.4231 305.574C19.4231 306.296 18.1051 297.45 18.1051 297.45C18.1051 297.45 16.6591 300.271 13.9301 298.591C12.9651 297.996 10.8051 291.787 10.8051 291.787C10.8051 291.787 8.87112 288.596 8.12412 285.247C6.80712 279.332 6.67012 268.702 7.59112 265.723C9.6867 258.946 13.7039 247.748 17.6439 241.354C17.4862 223.559 17.1942 153.612 22.1735 140.706C27.8885 125.892 38.2315 106.031 38.2315 106.031L68.9085 126.542L52.4545 153.187L42.1471 235.783ZM154.916 21.6151C154.916 21.6151 162.97 27.3071 168.986 37.4851C177.219 51.4091 172.915 63.4221 160.249 63.4421C146.686 63.4651 131.123 58.8491 124.562 38.3091C121.243 27.9191 118.108 19.7141 118.108 19.7141L154.916 21.6151Z' fill='#B28B67'/><path opacity='0.146833' d='M237.387 253.097C237.387 253.097 240.227 263.826 249.974 267.169C253.383 268.338 252.531 282.138 260.886 280.487' stroke='black' stroke-width='3'/><path fill-rule='evenodd' clip-rule='evenodd' d='M118.156 19.8395C118.56 20.9069 121.482 28.6672 124.562 38.3092C131.123 58.8492 146.686 63.4652 160.249 63.4422C172.915 63.4222 177.219 51.4092 168.986 37.4852C163.687 28.5207 156.807 23.0362 155.242 21.8559C171.237 22.9369 181.196 24.9452 190.42 33.5968C207.981 50.0668 221.264 97.4368 223.574 125.757L191.595 137.297L184.497 169.047H100.369C100.369 169.047 101.276 159.547 99.4662 147.857C97.1062 132.567 88.5912 121.157 88.5912 121.157L80.1432 133.997L27.6082 103.027C44.8082 71.6648 68.7982 39.3268 84.7932 29.0368C96.5853 21.447 107.653 19.7937 118.156 19.8395V19.8395ZM123.122 19.9732L124.845 20.0622C124.272 20.0298 123.698 19.9999 123.122 19.9732L123.122 19.9732Z' fill='**COLOR**'/><path opacity='0.204148' d='M184.902 169.685C188.11 128.942 209.315 119.327 193.315 73.6338' stroke='black' stroke-width='4'/><path opacity='0.204148' d='M154.916 21.6151C154.916 21.6151 162.97 27.3071 168.986 37.4851C177.219 51.4091 172.915 63.4221 160.249 63.4421C146.686 63.4651 131.123 58.8491 124.562 38.3091C121.243 27.9191 118.108 19.7141 118.108 19.7141' stroke='black' stroke-width='4'/><path opacity='0.204148' d='M110.161 94.634L90.6741 124.159' stroke='black' stroke-width='4'/></svg>
")
WardrobeTemplate.create(category: "Top",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187'><g id='Tanktop' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path fill-rule='evenodd' clip-rule='evenodd' d='M242.568 239.008L242.974 238.957L208.235 155.207C208.235 155.207 217.315 60.0274 191.075 35.9374C179.538 25.345 166.874 24.7191 143.147 23.5466C141.002 23.4406 138.767 23.3301 136.434 23.2074C134.345 23.0984 132.235 22.9499 130.103 22.7999C115.623 21.7811 100.126 20.6907 83.1637 31.3774C64.2447 43.2974 44.0137 84.2074 30.7347 121.877C15.7054 164.517 18.9856 237.344 19.0527 238.795C15.398 245.296 11.9523 257.375 10.2546 264.549C9.53761 267.583 10.3916 278.179 12.1056 283.991C13.0766 287.283 15.2206 290.336 15.2206 290.336C15.2206 290.336 17.7956 296.385 18.7996 296.913C21.6356 298.405 22.8876 295.493 22.8876 295.493C22.8876 295.493 24.7996 303.23 26.7476 302.375C26.8161 302.345 26.8863 302.315 26.958 302.284L26.9584 302.284C28.1443 301.77 29.7141 301.09 29.7556 299.04C30.0336 285.198 32.7446 270.738 37.5016 268.242C40.5559 266.64 41.6611 272.081 42.6959 277.176C43.2728 280.016 43.8279 282.749 44.6866 284.093C47.0126 287.735 56.1696 290.332 53.8586 283.965C53.2609 282.319 52.7733 281.015 52.3746 279.949C51.4398 277.45 50.9942 276.259 50.7667 275.027C50.5594 273.904 50.5334 272.748 50.4835 270.539L50.4786 270.321C50.3446 264.402 49.5876 254.341 49.5876 254.341L42.0626 230.276C41.9749 230.333 41.8873 230.389 41.7998 230.445L58.3247 140.847L81.0437 106.507C81.0437 106.507 95.7447 134.907 98.1547 150.197C100.004 161.887 99.2537 169.977 99.2537 169.977L186.075 171.257L188.284 191.042L220.155 241.817L220.737 241.744C218.236 256.49 228.624 277.566 228.624 277.566C228.624 277.566 223.22 274.27 222.145 277.152C221.667 278.435 220.583 288.683 240.823 289.373C242.971 289.447 248.141 285.075 248.141 285.075C248.141 285.075 244.372 292.272 250.143 293.686C250.143 293.686 259.444 279.75 259.587 276.649C259.729 273.548 256.744 257.851 255.13 254.681C254.199 252.853 247.812 245.18 242.568 239.008Z' fill='#B28B67'/><path opacity='0.152762' d='M232.757 249.441C232.757 249.441 235.597 260.169 245.344 263.513C248.752 264.682 247.901 278.481 256.255 276.831' stroke='black' stroke-width='3'/><path opacity='0.398112' d='M120.827 22.1836L126.164 65.3976' stroke='**COLOR**' stroke-width='3'/><path opacity='0.398112' d='M191.187 70.5581C191.187 70.5581 178.264 40.8551 157.841 24.1111' stroke='**COLOR**' stroke-width='3'/><path opacity='0.148693' d='M81.0439 106.507L93.2379 87.3423' stroke='black' stroke-width='3'/><path fill-rule='evenodd' clip-rule='evenodd' d='M185.514 171.248L99.2538 169.978C99.2538 169.978 100.121 161.869 98.1548 150.198C96.0388 137.644 86.5128 119.2 84.9248 114.397C84.9248 114.397 86.3928 119.072 91.8018 112.83C99.5468 103.893 126.164 62.3977 126.164 62.3977C126.164 62.3977 151.285 87.7867 171.445 87.0077C185.341 86.4707 190.315 64.9577 190.315 64.9577C212.585 113.358 188.007 107.343 185.514 171.248' fill='**COLOR**'/></svg>")
WardrobeTemplate.create(category: "Shorts",rendering_group: "bottom", svg:"<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'<g id='Bottom/Standing/Shorts' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='#997659' points='128 9.9475983e-14 165.630838 123.024171 183.860154 227.648304 198.153197 227.648304 178.890974 9.9475983e-14'></polygon><path d='M114.537727,0 C117.093705,67.5468821 114.085665,102.388787 113.513606,108.525715 C112.941548,114.662643 105.108196,154.454812 86.5636874,229.708469 L101.793992,224.477699 C131.10186,155.458959 141.088936,119.5887 144.450326,110.525715 C147.811717,101.46273 156.739403,64.6208249 171.233385,0 L114.537727,0 Z' id='Leg' fill='#B28B67'></path><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(84.000000, 199.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(178.000000, 199.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><polygon id='Bottom' fill='**COLOR**' points='123 0 139 62.6795201 187.870318 62.6795201 180.583554 0'></polygon><path d='M114,-3.55271368e-15 C108.735439,15.7805461 107.735439,36.6737195 111,62.6795201 L160.870318,62.6795201 L174.583554,-3.55271368e-15 L114,-3.55271368e-15 Z' id='Bottom' fill='**COLOR**'></path></g></svg>")
WardrobeTemplate.create(category: "Sweatpants",rendering_group: "bottom", svg:"<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'<g id='Bottom/Standing/Sweatpants' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='#997659' points='128 9.9475983e-14 164.630838 126.226909 181.860154 221 199.153197 221 181.890974 9.9475983e-14'></polygon><path d='M111.537727,0 C114.093705,65.5742244 113.085665,101.340188 112.513606,107.297892 C111.941548,113.255595 108.69393,153.156298 86.5636874,223 L104.549973,223 C133.85784,155.996902 144.088936,116.096199 147.450326,107.297892 C150.811717,98.4995844 160.739403,62.7336205 175.233385,0 L111.537727,0 Z' id='Leg' fill='#B28B67'></path><path d='M127.213639,1.13686838e-13 C136.741891,43.4350253 153.221683,112.768359 176.653017,208 L201.946059,208 C203.814239,110.253828 195.86709,45.9204947 182.104613,1.13686838e-13 L127.213639,1.13686838e-13 Z' id='Pant' fill='**COLOR**'></path><path d='M111.409919,0 C113.913164,65.5742244 107.425844,130.177256 87.3305078,209.020958 L114.316793,209.020958 C143.678541,143.017859 164.723052,78.7336205 179.105577,0 L111.409919,0 Z' id='Pant' fill='**COLOR**'></path><g id='Accessories/Shoe/Flat-Simple' transform='translate(84.000000, 199.000000)' fill='#191847'><path d='M0,37 L0.99242267,21 C6.8029179,22.6994251 14.0806841,22.0327584 22.8257214,19 C32.2287535,25.660617 44.0659431,30.2086712 58.3372903,32.6441626 L58.3372863,32.6441862 C59.4261013,32.829999 60.1581292,33.8632891 59.9723163,34.9521041 C59.9602834,35.0226139 59.9444765,35.0924273 59.9249637,35.1612435 L58.5529375,40 L22.8257214,40 L1.98484534,40 L0,37 Z' id='Shoe'></path></g><g id='Accessories/Shoe/Flat-Simple' transform='translate(178.000000, 199.000000)' fill='#191847'><path d='M0,37 L0.99242267,21 C6.8029179,22.6994251 14.0806841,22.0327584 22.8257214,19 C32.2287535,25.660617 44.0659431,30.2086712 58.3372903,32.6441626 L58.3372863,32.6441862 C59.4261013,32.829999 60.1581292,33.8632891 59.9723163,34.9521041 C59.9602834,35.0226139 59.9444765,35.0924273 59.9249637,35.1612435 L58.5529375,40 L22.8257214,40 L1.98484534,40 L0,37 Z' id='Shoe'></path></g></g></svg>")
WardrobeTemplate.create(category: "Coat",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187' version='1.1'><g id='Body/Lab-Coat' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path d='M190.358872,88.6100216 L220.545493,114.201672 C229.013042,117.13396 236.02085,120.535571 241.568917,124.406506 C242.849565,125.748514 244.32618,128.3882 238.68408,127.555307 C233.04198,126.722415 227.069879,126.100082 226.151873,127.980187 C225.233867,129.860292 228.504819,132.414187 226.740072,134.914152 C225.563574,136.580795 220.885448,131.868337 212.705694,120.776779 L182.108696,105.506639 L190.358872,88.6100216 Z M53.6671405,77.5359191 L71.3789189,80.1081345 C52.3668948,121.357659 42.1743233,143.172797 40.8012044,145.553548 C37.7116869,150.910237 41.3451669,160.240318 42.7655846,165.17944 C35.5871864,167.252341 37.8797238,156.161524 28.8030963,158.927786 C20.5183715,161.452702 13.6817028,167.176559 5.47644547,160.370261 C4.4676573,159.533467 3.61787693,156.797168 6.82426992,155.202852 C14.8125642,151.230829 26.541227,143.962534 28.3644086,141.283781 C30.8506424,137.630823 39.2848864,116.381535 53.6671405,77.5359191 Z' id='Skin' fill='#B28B67'></path><path d='M122.979272,9.21054221 L133.596123,4.63843187 C151.668356,40.3896079 176.923065,74.3010145 216.52753,101.346035 L208.768287,117.911928 C174.615844,101.621394 142.570612,89.4491188 127.58307,61.8321985 C122.552864,52.5632462 123.64558,20.7613641 122.979272,9.21054221 Z' id='Coat-Back' fill='**COLOR**' transform='translate(169.753401, 61.275180) rotate(5.000000) translate(-169.753401, -61.275180) '></path><path d='M90,110 C121.438326,113.333333 146.183737,113.333333 164.236234,110 C166.472817,109.587022 166.825667,105.842388 165.788454,103.300966 C149.636353,63.7244027 138.560302,29.1916266 138.560302,1.70263734 C135.596594,3.1967882 130.409827,3.42070538 123,2.37438888 C103.086202,30.7026762 93.9325378,63.2061447 90,110 Z' id='Shirt' fill='#323337'></path><path d='M118.049397,6.01740879e-14 L126.348425,5.5067062e-14 C128.280769,11.364871 134.375512,165.262588 153.190593,215.605966 L51.3853184,215.605966 C53.5924278,169.487243 71.0028709,114.087392 88.6398091,67.7283096 C73.0444357,81.9994875 59.4517855,106.180947 47.8618586,140.272687 L28.7926212,135.377648 C42.9712244,74.2810826 72.1224478,29.374879 116.246291,0.659036861 C116.341837,0.438307691 116.436936,0.218626329 116.531583,6.10622664e-14 L117.266004,6.06181771e-14 C117.53632,-0.173493435 117.807193,-0.346385506 118.078622,-0.518676213 L118.049397,6.1284311e-14 Z' id='Coat-Front' fill='**COLOR**'></path></g></svg>")
WardrobeTemplate.create(category: "Long-Sleeve",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187'><g id='Body/Long-Sleeve' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path d='M192,65.3107899 L231.482876,59.9251648 C239.381053,55.5320264 246.646993,52.5579486 253.280695,51.0029313 C255.147488,50.9484265 258.117196,51.6270536 253.693154,55.3151968 C249.269111,59.00334 244.780296,63.0831966 245.568527,65.0514942 C246.356757,67.0197919 250.471061,66.2874533 251.152638,69.3148625 C251.607023,71.3331352 244.929759,71.6610844 231.120845,70.2987101 L199.083874,83 L192,65.3107899 Z M67.9697919,74.4496834 L89.8671837,74.5318631 C65.8560993,128.56567 53.3363474,156.856914 52.3079281,159.405597 C49.9939846,165.140133 54.8906002,173.873732 56.9845874,178.567103 C50.1645409,181.61887 50.8912241,170.316929 42.2879189,174.319492 C34.4352209,177.972846 28.4616931,184.59248 19.3890352,178.994371 C18.2736052,178.306117 17.0512757,175.714714 20.0045784,173.68967 C27.3623323,168.644547 37.9653015,159.814672 39.3979297,156.908251 C41.3515741,152.944826 50.8755281,125.458637 67.9697919,74.4496834 Z' id='Skin' fill='#997659'></path><path d='M123.473568,9.66927317 L140.652814,9.31280705 C148.188654,47.0006412 173.203746,69.0336905 223.790464,56.4079457 L234.893349,104.819132 C187.489073,115.210412 143.760505,99.6935282 130.595778,48.4746485 C127.187846,35.2156986 124.201379,21.3681777 123.473568,9.66927317 Z' id='Clothes-Back' fill='**COLOR**' transform='translate(179.183459, 58.591470) rotate(5.000000) translate(-179.183459, -58.591470) '></path><path d='M119.490817,0.0159395536 L145.467604,5.96527657 C145.467604,50.6444246 159.700025,79.150459 167,112 L96.8436541,112 C95.8553795,123.350899 95.2484887,135.017565 94.9322404,147 L42.4016357,147 C54.3053653,83.6639633 79.4301113,34.6639633 117.775873,0 L119.477154,0 L119.490817,0.0159395536 Z' id='Clothes' fill='**COLOR**'></path><path d='M107.912453,48.2592493 C106.104463,76.1005287 107.167794,97.3474456 111.102445,112 L96.8436541,112 C98.8014235,89.5139021 102.255877,68.2669888 107.91245,48.25926 Z' id='Shade' fill-opacity='0.1' fill='#000000'></path></g></svg>")
WardrobeTemplate.create(category: "Sweatshirt",rendering_group: "top", svg:"<svg width='256px' height='187px' viewBox='0 0 256 187' version='1.1'><g id='Body/Pointing-Forward' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path d='M158.638039,42.7002327 L193.347821,23.6898218 C199.119845,16.8355222 204.806897,11.5121983 210.408976,7.71984988 C212.120791,7.00519513 215.114322,6.57263502 212.314801,11.541507 C209.515281,16.510379 206.794075,21.8627914 208.22032,23.3935933 C209.646565,24.9243953 213.203036,22.7859324 214.904525,25.3293729 C216.038851,27.0249998 209.962902,29.703613 196.676679,33.3652124 L171.455792,56.4576422 L158.638039,42.7002327 Z M213,58.7398397 L228.246523,50.3642065 C230.385826,42.2239107 232.943102,38.1282526 235.918351,38.0772323 C238.203961,37.0137608 234.223587,47.2997848 238.556381,46.4077826 C242.889175,45.5157805 253.464286,37.6506887 255.286431,39.2475996 C257.982176,41.6101262 255.578484,48.864452 252.746364,52.4730906 C247.453134,59.2176317 243.070569,61.5240612 232.238377,64.5443446 C226.574749,66.1235046 220.451364,69.288795 213.868224,74.0402157 L213,58.7398397 Z' id='Skin' fill='#997659'></path><path d='M142.857986,34.7503025 C154.885997,36.5253162 171.300289,36.5253162 190.103565,28.3861499 L194.443447,44.4123074 C180.805809,54.2415559 162.712714,61.226516 148.287694,58.5246963 C136.919984,56.3955135 133.271725,41.6595451 142.857986,34.7503025 Z' id='Sleeve' fill='**COLOR**' transform='translate(165.898282, 43.748060) rotate(-9.000000) translate(-165.898282, -43.748060) '></path><path d='M158.104267,62.7612342 C171.011057,65.9801048 192.654946,62.184167 223.035933,51.3734208 C230.571674,66.9635189 234.055257,78.0780631 233.486685,84.7170535 C207.424274,98.3310492 185.086537,104.400834 166.683227,104.801533 C167.268059,115.72137 165.938918,126.111847 161.473933,135.605966 C152.29468,155.124265 98.5450578,137.048144 80.4727876,140.605966 C69.1554006,103.85132 91.0379108,88.9143806 91.0555178,65.3966157 C91.0747993,39.6421572 111.75441,-1.42108547e-13 114.797001,-1.42108547e-13 L142.54375,1.15166749e-13 C144.0747,19.6690193 151.7804,41.3459827 158.104267,62.7612342 Z' id='Clothes' fill='**COLOR**'></path></g></svg>")
WardrobeTemplate.create(category: "Baggy",rendering_group: "bottom", svg:"<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'><g id='Bottom/Standing/Baggy-Pants' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='#997659' points='134 0 183.081639 124.226909 216.000898 229.25029 229 229.25029 178.673688 5.090379e-13'></polygon><path d='M124.116628,0 C123.593979,43.6541888 115.971833,102.427468 114.754071,105.148648 C113.942229,106.962768 85.9161573,130.032465 30.6758546,174.357739 L39.6290713,183.938736 C104.807511,145.935376 138.9048,124.399339 141.920937,119.330628 C146.445143,111.72756 161.1744,41.763137 173,0 L124.116628,0 Z' id='Leg' fill='#B28B67'></path><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(51.500000, 189.000000) rotate(50.000000) translate(-51.500000, -189.000000) translate(21.000000, 169.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(208.000000, 199.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><polygon id='Pant' fill='**COLOR**' points='167 218.432889 228.804464 211.725327 183 2.84217094e-14 127.644073 2.84217094e-14'></polygon><path d='M43.4599581,158.900479 L84,206.885961 C126.699953,160.249961 151.594137,129.819963 158.682552,115.595966 C165.770967,101.37197 172.143091,62.839981 177.798925,0 L115.478146,0 C112.388642,55.2838742 110.306102,84.2121259 109.230525,86.7847551 C108.154948,89.3573843 86.2314253,113.395959 43.4599581,158.900479 Z' id='Pant' fill='**COLOR**'></path></g></svg>")
WardrobeTemplate.create(category: "Jogging",rendering_group: "bottom", svg:"<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'><g id='Bottom/Standing/Jogging' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='#997659' points='130 0 204.306413 124.226909 260.014844 229.25029 272.013946 229.25029 178.673688 5.090379e-13'></polygon><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(250.000000, 199.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><path d='M244.543057,212.432889 L267.683113,205.432889 C257.544824,175.124875 245.118911,141.772016 230.405374,105.374313 C215.691837,68.97661 199.890046,33.851839 183,2.84217094e-14 L117.644073,2.84217094e-14 C136.422172,42.821022 156.329475,81.7294172 177.365982,116.725186 C198.402489,151.720954 220.794847,183.623522 244.543057,212.432889 Z' id='Pant' fill='**COLOR**'></path><path d='M125.116628,2.84217094e-14 C118.103498,43.6541888 104.577091,99.4274685 103.300563,101.148648 C102.449544,102.296102 71.8126514,112.562199 11.3898843,131.94694 L13.9818352,142.527938 C86.0358431,132.131776 124.00216,124.066006 127.880787,118.330628 C133.698727,109.72756 162.748486,41.763137 174,2.84217094e-14 L125.116628,2.84217094e-14 Z' id='Leg' fill='#B28B67'></path><path d='M32.6295078,122.800477 L37.1949469,139.841939 C91.0871466,144.568621 124.108088,141.153296 136.25777,129.595966 C148.407453,118.038636 162.254504,74.839981 177.798925,-1.13686838e-13 L115.478146,-1.13686838e-13 C105.629567,61.2838742 100.12357,93.2121259 98.9601559,95.7847551 C97.7967416,98.3573843 75.6865256,107.362625 32.6295078,122.800477 Z' id='Pant' fill='**COLOR**'></path><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(24.500000, 154.000000) rotate(80.000000) translate(-24.500000, -154.000000) translate(-6.000000, 134.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g></g></svg>")
WardrobeTemplate.create(category: "Skirt",rendering_group: "bottom", svg:"<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'><g id='Bottom/Standing/Shorts' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='#997659' points='128 9.9475983e-14 165.630838 123.024171 183.860154 227.648304 198.153197 227.648304 178.890974 9.9475983e-14'></polygon><path d='M114.537727,0 C117.093705,67.5468821 114.085665,102.388787 113.513606,108.525715 C112.941548,114.662643 105.108196,154.454812 86.5636874,229.708469 L101.793992,224.477699 C131.10186,155.458959 141.088936,119.5887 144.450326,110.525715 C147.811717,101.46273 156.739403,64.6208249 171.233385,0 L114.537727,0 Z' id='Leg' fill='#B28B67'></path><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(84.000000, 199.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><g id='Accessories/Shoe/Flat-Sneaker' transform='translate(178.000000, 199.000000)' fill='#E4E4E4'><path d='M2.67813181,25.4019242 C1.55937727,28.3884109 1,30.6229931 1,32.1056708 C1,33.908957 1.3004142,36.5404001 1.90124261,40 C3.99318117,40 22.7937852,40 58.3030548,40 C59.768738,35.1545073 58.9226607,32.5385816 55.7648228,32.1522232 C52.606985,31.7658647 49.9837155,31.4170139 47.8950143,31.1056708 L21.6799926,19.4188835 C21.1755635,19.1940064 20.584344,19.4206282 20.359467,19.9250573 C20.35562,19.9336867 20.3518954,19.9423702 20.3482945,19.9511052 L18.6632131,24.038695 C15.7398812,25.4026522 13.3643706,26.0846307 11.5366811,26.0846307 C10.0517269,26.0846307 8.00099246,25.4849054 5.38447792,24.2854549 L5.38448339,24.285443 C4.38038273,23.8251478 3.19325534,24.2659892 2.73296014,25.2700899 C2.71312074,25.3133681 2.69483298,25.3573409 2.67813181,25.4019242 Z' id='shoe'></path></g><polygon id='Bottom' fill='**COLOR**' points='123 0 139 62.6795201 187.870318 62.6795201 180.583554 0'></polygon><path d='M114,-3.55271368e-15 C108.735439,15.7805461 107.735439,36.6737195 111,62.6795201 L160.870318,62.6795201 L174.583554,-3.55271368e-15 L114,-3.55271368e-15 Z' id='Bottom' fill='**COLOR**'></path></g></svg>")
WardrobeTemplate.create(category: "Jeans",rendering_group: "bottom", svg:"<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'><g id='Bottom/Standing/Skinny-Jeans' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='**COLOR**' points='128 9.9475983e-14 164.254962 127.226909 190.706957 221 210 221 181.890974 9.9475983e-14'></polygon><path d='M118.304342,0 C117.465768,65.5742244 114.606247,101.340188 113.725779,107.297892 C112.845311,113.255595 99.5321718,151.156298 73.7863613,221 L93.7726468,221 C126.549033,153.996902 144.845651,116.096199 148.662499,107.297892 C152.479348,98.4995844 164.258515,62.7336205 182,0 L118.304342,0 Z' id='Leg' fill='**COLOR**'></path><g id='Accessories/Shoe/Flat-Pointy' transform='translate(72.000000, 199.000000)' fill='**COLOR**'><path d='M0,40 L1,19 L22,19 C31.9576033,26 44.9576033,31.6666667 61,36 L61,40 L23,40 L10,38 L10,40 L0,40 Z' id='Shoe'></path></g><g id='Accessories/Shoe/Flat-Pointy' transform='translate(188.000000, 199.000000)' fill='**COLOR**'><path d='M0,40 L1,19 L22,19 C31.9576033,26 44.9576033,31.6666667 61,36 L61,40 L23,40 L10,38 L10,40 L0,40 Z' id='Shoe'></path></g></g></svg>")

