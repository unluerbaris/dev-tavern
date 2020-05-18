class AddDefaultToMatches < ActiveRecord::Migration[6.0]
  def change
    change_column :matches, :status, :boolean, default: false
  end
end
