ActiveAdmin.register Advert, as: "Annonces" do

  permit_params :type, :title, :description, :price, :published, :category
end
