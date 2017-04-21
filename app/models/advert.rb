class Advert < ApplicationRecord

  has_attachments :photos, maximum: 3

  belongs_to :user
  belongs_to :category

  validates :title, presence: true, length: {minimum: 5}
  validates :description, presence: true, length: {minimum: 80}
  validates :price, presence: true
  validates :location, presence: true
  validates :category_id, presence: true

  enum role: { Demande: 0, Offre: 1}

  def self.search(search)
    if search
     where(["lower(title) LIKE ?","%#{search.downcase}%"]).order('created_at DESC')
    else
      all
    end
  end

end
