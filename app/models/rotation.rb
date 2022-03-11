class Rotation < ApplicationRecord
  belongs_to :user
  belongs_to :portalable, polymorphic: true
end
