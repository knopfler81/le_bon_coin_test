class AddDatasToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :last_name,   :string
    add_column :users, :first_name,  :string
    add_column :users, :nickname,    :string
    add_column :users, :region,      :string
    add_column :users, :departement, :string
    add_column :users, :address,     :string
    add_column :users, :zipcode,     :string
    add_column :users, :city,        :string
    add_column :users, :phone,       :string
    add_column :users, :birthdate,   :string
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
