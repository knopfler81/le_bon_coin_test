#### J'ai utilisé un template (du Wagon) pour générer mon application. Il y a quelques gems utiles installées, pour gagner du temps (devise, simple_form, bootstap, font_aswome, pry_bye_bug, pg, better_error etc...)
#### Ce template comporte également une pré organisation du CSS

###Dans un premier lieu j'améliore la table existante des users en ajoutant nom, prénom, pseudo, adresse, téléphone. Et surtout un boolean `admin`qui sera utile pour l'utilisation de `Active Admin` afin de gérer la modération des annonces.
####J'ajoute du coup un `Registrations  Controller` qui hérite de devise pour que l'utilisateur puisse éditer son profile. Je crée aussi un `Users Controller` et je mets à jour le formulaire `views/devise/registrations/edit.html.erb` avec les champs que j'ai choisi d'ajouter.
####Je modifie aussi les routes pour users
