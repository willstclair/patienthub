class RemoveConditionIdFromDiagnoses < ActiveRecord::Migration
  def up
    remove_column :diagnoses, :condition_id
  end

  def down
    add_column :diagnoses, :condition_id, :integer
  end
end
