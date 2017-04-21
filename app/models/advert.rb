class Advert < ApplicationRecord

  has_attachments :photos, maximum: 3

  belongs_to :user
  belongs_to :category

  validates :title, presence: true, length: {minimum: 15}
  validates :description, presence: true, length: {minimum: 80}
  validates :price, presence: true
  validates :location, presence: true
  enum role: { Demande: 0, Offre: 1}
end
