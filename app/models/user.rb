class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :user_roles
  has_many :roles, through: :user_roles

  Role::DEFAULT_ROLES.each do |role_name|
  	define_method("is_#{role_name}?") do
  		roles.exists?(name: role_name)
  	end
  end

end
