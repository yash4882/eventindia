class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role
  # after_create :add_user_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

  # def add_user_role
  #   role = Role.find_by(id:role_id)
  #   self.add_role role.name.to_sym
  # end

end
