class AddOrganizationIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :organization, index: true
  end
end
