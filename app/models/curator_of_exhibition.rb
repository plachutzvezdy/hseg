class CuratorOfExhibition < ApplicationRecord
  belongs_to :exhibition
  belongs_to :curator
end
