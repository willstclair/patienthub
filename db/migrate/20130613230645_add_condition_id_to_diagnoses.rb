class AddConditionIdToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :condition_id, :integer
  end
end
