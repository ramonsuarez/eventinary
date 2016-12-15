class User < ApplicationRecord
 # Include default devise modules. Others available are:
 # :confirmable, :lockable, :timeoutable and :omniauthable
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable,
        :omniauthable, :omniauth_providers => [:facebook]

 has_attachment :avatar
 has_many :organizations
 has_many :bookings
 has_many :events, through: :bookings
 has_many :events, through: :organizations
 # after_create :subscribe_to_newsletter
 def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.first_name = auth.info.first_name
    user.last_name = auth.info.last_name
    user.address = auth.info.address
    user.phone = auth.info.phone
    user.avatar = auth.info.avatar
  end
 end

 def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

end
