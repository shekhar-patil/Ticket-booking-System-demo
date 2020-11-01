class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role

  def admin?
    role.name == 'admin'
  end

  def superadmin?
    role.name == 'superadmin'
  end

  def customer?
    role.name == 'customer'
  end
end
