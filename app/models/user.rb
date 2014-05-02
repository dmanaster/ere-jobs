class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_initialize :set_role
  ROLES = %w[admin active banned]

  has_and_belongs_to_many :companies
  has_many :jobs
  

  def set_role
    self.role ||= "active"
  end

end
