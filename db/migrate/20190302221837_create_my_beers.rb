class CreateMyBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :my_beers do |t|
      t.integer :beer_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
