class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :location
      t.string :availability
      t.decimal :price_per_hour

      t.timestamps
    end
  end
end
