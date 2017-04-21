class RemoveAdvertIdFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :adverts_id
  end
end
