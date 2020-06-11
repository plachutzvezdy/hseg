class Curator < ApplicationRecord
  has_many :curator_of_exhibitions
  has_many :exhibitions, through: :curator_of_exhibitions
end
