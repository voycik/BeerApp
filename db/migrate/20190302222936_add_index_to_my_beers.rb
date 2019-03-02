class AddIndexToMyBeers < ActiveRecord::Migration[5.2]
  def change
    add_index :my_beers, [:beer_id, :user_id], unique: true
  end
end
