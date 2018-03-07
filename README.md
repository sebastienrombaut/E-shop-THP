# README

Notre app heroku : https://eshop-bali.herokuapp.com/

WARNING !!!!!
PS de Leila
Avec l'install de Paperclip, vous n'arriverez plus à acceder à l'app sans suivre ces étapes :
- git pull
- installer Image Magick
    pour Ubuntu : 
       sudo apt-get update
       sudo apt-get install imagemagick

    pour Mac http://www.imagemagick.org/script/download.php

- bundle install --without production
- rails db:reset (c'est le mix entre db:drop, db:create et db:migrate)
- puis créer un fichier .env à la racine et venir me demander les clés aws
- j'ai pas réussi à faire un db:seed !
Pour le moment :  pour créer des articles, vous pouvez allez voir dans le fichier seed puis copier coller chaque article dans la console rails :/





## Liens utiles
Comment intégrer un thème Bootstrap dans une app Rails ?
https://www.notch8.com/implementing-a-bootstrap-theme/

Comment générer les controllers Devise?
https://stackoverflow.com/questions/6234045/how-do-you-access-devise-controllers

Pour gérer tous les formats photos lors du assets:precompile
https://stackoverflow.com/questions/8052865/rails-3-1-asset-pipeline-why-my-images-do-not-precompile-for-production