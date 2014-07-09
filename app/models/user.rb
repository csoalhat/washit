class User < ActiveRecord::Base
   devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable,
  :validatable, :timeoutable, :omniauthable , :omniauth_providers => [:google_oauth2]

  has_many :orders
  has_many :busy_slots

  belongs_to :default_provider, class_name: "User", foreign_key: "default_provider_id"

  # after_create :get_coords(address)

  def self.find_for_google_oauth2(auth, signed_in_user=nil)
    if user = signed_in_user || User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name if user.name.blank?
      user.image = auth.info.image if user.image.blank?
      user.save
      user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.email = auth.info.email
    end
  end
end

def role?(role)
    self.role.to_s == role.to_s
  end

end
