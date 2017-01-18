class Monster < ApplicationRecord
  validates :name, presence: true
  validates :source, presence: true
  validates :img, presence: true
end
