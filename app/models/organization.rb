class Organization < ApplicationRecord
  has_attachment :logo
  include Bootsy::Container
  belongs_to :user
  has_many :events

end
