class User < ApplicationRecord

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  belongs_to :profile, polymorphic: true

  validates :email, presence: true, uniqueness: { case_sensitive: false }

end
