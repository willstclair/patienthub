class RemoveUserIdFromDiagnoses < ActiveRecord::Migration
  def up
    remove_column :diagnoses, :user_id
  end

  def down
    add_column :diagnoses, :user_id, :integer
  end
end
