class Galley < ApplicationRecord
  belongs_to :crew_members
  belongs_to :ingredients

end
