class AddMoneyFieldToEventsPrice < ActiveRecord::Migration[5.0]
  def change
    add_monetize :events, :penalty_fee
  end
end
