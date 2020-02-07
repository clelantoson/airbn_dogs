class Dogsitter < ApplicationRecord
  has_many :dogs
  has_many :dogs, through: :strolls
  belongs_to :city
end
