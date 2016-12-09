class User < ApplicationRecord
 # Include default devise modules. Others available are:
 # :confirmable, :lockable, :timeoutable and :omniauthable
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
 has_attachment :avatar
 has_many :organizations
 has_many :bookings
 has_many :events, through: :bookings
 has_many :events, through: :organizations
end
