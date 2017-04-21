ActiveAdmin.register Advert, as: "Annonces" do
  permit_params :type, :title, :description, :price, :published, :category
    index do
      column :id
      column :title
      column :description do |advert|
        truncate(advert.description, omision: "...", length: 50)
      end
    actions
  end
end
