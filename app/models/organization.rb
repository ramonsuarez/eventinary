class Organization < ApplicationRecord
  has_attachment :logo

  belongs_to :user
  has_many :events
end
