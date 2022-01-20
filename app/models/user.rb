class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
  after_create :assign_default_role
  has_many :posts, foreign_key: :author_id
  has_many :roles, foreign_key: :id
  has_many :comments, foreign_key: :author_id
  rolify

  def assign_default_role
    self.add_role(:reader) if self.roles.blank?
  end
end
