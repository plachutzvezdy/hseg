class Exhibition < ApplicationRecord
  mount_uploader :cover, CoverUploader
  has_many :curator_of_exhibitions
  has_many :curators, through: :curator_of_exhibitions
  has_many :artworks
end
