# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(
  title: "British Shorthair",
  description: "Le british shorthair est une race de chat originaire de Grande-Bretagne. Ce chat de taille moyenne à grande est caractérisé par sa tête très ronde et ses grands yeux ronds.",
  price: "953.00",
  image_url: 'products/product-01.jpg',
  featured: true,
  numbersales: 0
)

Item.create(
  title: "Siamois",
  description: "L'origine se trouve dans le Sud-Est de l'Asie : la race pourrait descendre des chats sacrés des temples de Siam (d'où leur nom). Ces chats étaient déjà représentés dans certains manuscrits retrouvés à Ayutthaya (ancienne capitale du Siam) et datant de 1350.",
  price: "800.00",
  image_url: 'products/siamois.jpeg',
  featured: true,
  numbersales: 0
)

Item.create(
  title: "Persan",
  description: "Le persan est une race de chat à poil long. Ce chat de taille moyenne à grande est caractérisé par son poil long et abondant, sa silhouette toute en rondeur et son visage au museau très court. Reconnue depuis la fin du xixe siècle, la race est d'abord modifiée par les Anglais, puis essentiellement par les États-Unis après la Seconde Guerre mondiale.",
  price: "955.00",
  image_url: 'products/persan.jpeg',
  featured: true,
  numbersales: 0
)

Item.create(
  title: "Ragdoll",
  description: "Le ragdoll est une race de chats originaire des États-Unis. Le nom de ce chat de grande taille provient d'une particularité étonnante : lorsqu'on le porte, il devient aussi mou qu'une poupée de chiffon, « ragdoll » en anglais.",
  price: "1086.00",
  image_url: 'products/ragdoll.jpeg',
  featured: true,
  numbersales: 0
)

Item.create(
  title: "Bengal",
  description: "Le bengal est une race de chat originaire des États-Unis. Cette race de taille moyenne à grande, par rapport aux autres chats, se caractérise par sa fourrure ressemblant à celle du Chat léopard du Bengale, une espèce de chat sauvage dont il est issu, par croisement avec des chats domestiques.",
  price: "1227.00",
  image_url: 'products/bengal.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Abyssin",
  description: "L'abyssin, aussi appelé bunny Cat (chat lapin), ou parfois Aby, est une race de chat originaire d'Asie. Ce chat est caractérisé par une robe à poil court au patron ticked tabby.",
  price: "1143.00",
  image_url: 'products/abyssin.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Bleu Russe",
  description: "Le bleu russe ou russe est une race de chats aux origines controversées et usuellement considérée comme une race naturelle apparue dans les pays froids comme la Russie ou les pays scandinaves.",
  price: "1024.00",
  image_url: 'products/bleu_russe.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Burmese",
  description: "Le burmese est une race de chat originaire de Thaïlande. Ce chat de taille moyenne est caractérisé par sa robe à poils courts et au motif sépia. Il ne doit pas être confondu avec le Birman, plus connu sous le nom de Sacré de Birmanie.",
  price: "996.00",
  image_url: 'products/burmese.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Siberian",
  description: "Le sibérien est une race de chat originaire de Russie. Ce chat de grande taille est caractérisé par sa robe à poils mi-longs et sa silhouette « en tonneau ».Il est qualifié comme étant la race de chat la plus hypoallergénique, c'est-à-dire possédant peu d'allergènes, connue à ce jour",
  price: "1690.00",
  image_url: 'products/siberian.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Exotic Shorthair",
  description: "L'exotic shorthair ou simplement exotic est une race de chats originaire des États-Unis. L'exotic shorthair est la variété à poils courts du persan. Il partage sa morphologie ramassée toute en rondeur et le profil écrasé du visage.",
  price: "800.00",
  image_url: 'products/exotic_shorthair.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Sacré de Birmanie",
  description: "Le sacré de Birmanie ou birman, est une race de chats originaire de France. Ce chat de taille moyenne est caractérisé par sa robe à poil mi-long, qui présente le même patron colourpoint que le siamois mais ses pieds sont d'un blanc pur, comme s'il possédait des gants. Les yeux du birman sont d'un bleu profond.",
  price: "1200.00",
  image_url: 'products/sacre_de_birmanie.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Scottish Fold",
  description: "Le Scottish Fold et le Highland Fold sont deux races de chats originaires d'Écosse, qui se caractérisent par des oreilles repliées vers l'avant (fold signifiant « pli » en anglais).",
  price: "1200.00",
  image_url: 'products/scottish_fold.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Cornish Rex",
  description: "Le cornish rex, également appelé rex de Cornouailles, est une race de chat originaire du Royaume-Uni. Ce chat est caractérisé par sa robe à poil très court, cranté et doux.",
  price: "871.00",
  image_url: 'products/cornish_rex.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Ocicat",
  description: "L'ocicat est une race de chat originaire des États-Unis. Ce chat de taille moyenne est caractérisé par sa robe couleur fauve tachetée rappelant celle de l'ocelot.",
  price: "1000.00",
  image_url: 'products/ocicat.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Norvegien",
  description: "Le norvégien, également appelé chat des forêts norvégiennes ou norsk skogkatt, est une race de chat à poil mi-long originaire de Norvège. Ce chat de grande taille est caractérisé par sa fourrure à poils mi-longs très épaisse et son allure sauvage. D'apparence puissante, sa tête est caractérisée par son profil rectiligne et son menton fort.",
  price: "900.00",
  image_url: 'products/norvegian.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Tonkinois",
  description: "Le Tonkinois est un chat issu initialement du mariage d'un siamois et d'un burmese. Il est de type semi-foreign, c'est-à-dire compact et musclé, mais sans être lourd et trapu.",
  price: "795.00",
  image_url: 'products/tonkinois.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Angora Turc",
  description: "L'angora turc est une race de chat à poils mi-longs originaire de Turquie (van). Ce chat est caractérisé par sa robe à poils mi-longs très soyeuse et sans sous-poils, et une silhouette fine qui le classe dans la catégorie des chats foreign comme l'abyssin ou le bleu russe.",
  price: "902.00",
  image_url: 'products/angora_turc.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Manx",
  description: "L'angora turc est une race de chat à poils mi-longs originaire de Turquie (van). Ce chat est caractérisé par sa robe à poils mi-longs très soyeuse et sans sous-poils, et une silhouette fine qui le classe dans la catégorie des chats foreign comme l'abyssin ou le bleu russe.",
  price: "788.00",
  image_url: 'products/manx.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Himalayen",
  description: "L'himalayen, aussi appelé colourpoint ou colorpoint (US) est une race de chat originaire des États-Unis. Dans certains pays européens, cette race n'existe pas et est considérée comme une robe du Persan. ",
  price: "1200.00",
  image_url: 'products/himalayen.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Bombay",
  description: "Le bombay est une race de chats originaire des États-Unis. Créée dans les années 1960 dans le but d'obtenir une panthère noire miniature, la race est issue de croisements entre american shorthair noirs et burmeses sable.",
  price: "1018.00",
  image_url: 'products/bombay.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Chartreux",
  description: "Le Chartreux est une race rare de chat domestique de France. Le Chartreux est grand et musclé (appelé cobby ) avec des membres relativement courts et bien osseux, et des réflexes très rapides. Ils sont connus pour leurs doubles manteaux bleus (gris) résistants à l'eau et aux cheveux courts, qui ont souvent une texture légèrement couche-culotte (présentant souvent des «pauses» comme une peau de mouton) et des yeux de couleur orange ou cuivrée.",
  price: "850.00",
  image_url: 'products/chartreux.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Savannah",
  description: "Le Savannah est une race de chats, créée aux États-Unis à la fin des années 1990. Ce chat de grande taille résulte du croisement entre un serval mâle et un chat domestique.",
  price: "4750.00",
  image_url: 'products/savannah.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Ragamuffin",
  description: "Le Ragamuffin est une race de chat originaire des États-Unis. Ce chat de grande taille est caractérisé par ses ascendants ragdoll.",
  price: "800.00",
  image_url: 'products/ragamuffin.jpg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "LaPerm",
  description: "Le laPerm est une race de chat originaire des États-Unis. Ce chat de taille moyenne est caractérisé par sa robe à poils frisés.",
  price: "1000.00",
  image_url: 'products/laperm.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Cymric",
  description: "Le Cymric est une race de chat originaire de l'île de Man (Îles Britanniques). Ce chat est la variété à poils mi-longs du Manx, ayant la particularité de ne pas avoir de queue.",
  price: "950.00",
  image_url: 'products/cymric.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Munchkin",
  description: "Le munchkin est une race de chat originaire des États-Unis, issu d'une mutation spontanée survenue en 1983. Ce chat est caractérisé par ses pattes très courtes, d'où le surnom de « chat basset » qu'on lui donne parfois.",
  price: "820.00",
  image_url: 'products/munchkin7.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Pixie Bob",
  description: "Le pixie-bob ou pixiebob est une race de chat originaire du grand nord-ouest des États-Unis. Ce chat est caractérisé par sa ressemblance physique avec le Lynx roux (ou Bobcat en anglais).",
  price: "1300.00",
  image_url: 'products/pixie_bob.jpeg',
  featured: false,
  numbersales: 0
)

Item.create(
  title: "Dragon li",
  description: "The Dragon Li (also called Chinese Li Hua, China Li Hua, Li Hua, Li Hua Mau, Li Hua Mao (in Pinyin)  is a Chinese breed of domestic cat originating from nascent Chinese folklore and dynastic culture.",
  price: "500.00",
  image_url: 'products/dragon_li.jpeg',
  featured: false,
  numbersales: 0
)
