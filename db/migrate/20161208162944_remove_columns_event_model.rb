class RemoveColumnsEventModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :image
    remove_column :events, :address_2
    remove_column :events, :city
    remove_column :events, :state
    remove_column :events, :postcode
    remove_column :events, :country
    remove_column :events, :show_map
    remove_column :events, :ticket_name

    add_column :events, :status, :string
  end
end
