** J'ai utilisé un template (du Wagon) pour générer mon application. Il y a quelques gems utiles installées, pour gagner du temps (devise, simple_form, bootstap, font_aswome, pry_bye_bug, pg, better_error etc...)Ce template comporte également une pré organisation du CSS

* Dans un premier lieu j'améliore la table existante des users en ajoutant nom, prénom, pseudo, adresse, téléphone...etc. Et surtout un boolean `admin`qui sera utile pour l'utilisation de `Active Admin` afin de gérer la modération des annonces.
* J'ajoute du coup un `Registrations  Controller` qui hérite de devise pour que l'utilisateur puisse éditer son profile. Je crée aussi un `Users Controller` et je mets à jour le formulaire `views/devise/registrations/edit.html.erb` avec les champs que j'ai choisi d'ajouter.
* Je modifie aussi les routes pour users

* Je commit

* Je créer le model `advert` ainsi que ses migrations, ses validations

* Je créer le controller `adverts` , les vues, les routes. 

* J'ajoute un model `category` qui a juste un nom. Et je fais les relations avec le model `advert`

* J'ajoute le système d'uploade de photo avec Attachinary et Cloudinary. J'ai crée un compte sur Cloudinary afin d'obtenir une clé. J'ajoute quelques gem pour que cela fonctionne bien:
```
  gem 'cloudinary', '1.1.7'
  gem 'attachinary', github: 'assembler/attachinary'
  gem 'jquery-fileupload-rails'
  gem 'coffee-rails'
```

*Ajout de la gem `active_admin` pour gérer la modération des annonces et éventuellement des users. Pour modérer les annonces, il faut créer un admin dans la console rails, par exemple on veut que celui qui l'id 1 devienne admin:
```console
U = User.find(1)
U.admin = true
U.save
```
Et hop! Vous êtes admin :)
Afin de publier une annonce, il vous suffit d'aller dans `localhost:3000/admin` onglets annonces, `edit` et de cocher la check boxe `published`, ainsi l'annonce sera publiée sur le site.
