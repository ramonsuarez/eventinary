class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :url
      t.string :logo
      t.string :description
      t.string :email
      t.string :phone

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
