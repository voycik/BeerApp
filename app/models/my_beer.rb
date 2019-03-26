class MyBeer < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: { scope: :beer_id }
  validates :beer_id, numericality: {only_integer: true}
end
