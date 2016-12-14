class CreateEvents < ActiveRecord::Migration[5.0]
def change
    create_table :events do |t|
      t.string :title
      t.boolean :offline
      t.string :online_url
      t.string :venue
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.string :postcode
      t.string :country
      t.boolean :show_map
      t.datetime :start
      t.datetime :end
      t.string :image
      t.text :description
      t.string :ticket_name
      t.integer :quantity
      t.integer :penalty_fee
      t.string :cancellation_policy
      t.boolean :public
      t.integer :price

      t.timestamps
    end
  end
end
