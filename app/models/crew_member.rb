class CrewMember < ApplicationRecord
  has_many :ingredients, through: :galleys
  has_many :galleys
  belongs_to :post

end
