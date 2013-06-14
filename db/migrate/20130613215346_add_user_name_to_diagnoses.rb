class AddUserNameToDiagnoses < ActiveRecord::Migration
  def change
    add_column :diagnoses, :user_name, :string
  end
end
