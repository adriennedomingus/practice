class AddStatusColumnToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :status, :string
  end
end
