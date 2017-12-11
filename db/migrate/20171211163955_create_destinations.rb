class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :country
      t.string :city
      t.string :description

      t.timestamps
    end
  end
end
