class Ingredient < ApplicationRecord
  has_many :crew_members, through: :galleys
  has_many :galleys
  belongs_to :origin
  belongs_to :category

end
