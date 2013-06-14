class AddUserIdToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :user_id, :integer
  end
end
