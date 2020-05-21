class ChangeStatusToBeStringInMatches < ActiveRecord::Migration[6.0]
  def change
    change_column :matches, :status, :string, default: 'Pending...'
  end
end
