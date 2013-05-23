class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :user_type
      t.integer :zip_code
      t.integer :condition_id
      t.string :treatments_advised
      t.string :comments

      t.timestamps
    end
  end
end
