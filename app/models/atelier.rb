class Atelier < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }

end
