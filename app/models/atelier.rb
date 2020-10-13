class Atelier < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :price, presence: true

end
