class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.int :rating
      t.string :content
      t.int :user_id
      t.int :destination_id

      t.timestamps
    end
  end
end
