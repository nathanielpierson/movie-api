class RemoveIntegerParameter < ActiveRecord::Migration[7.2]
  def change
    remove_column :movies, :integer, :string
  end
end
