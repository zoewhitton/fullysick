class User < ActiveRecord::Base
  has_one :patient
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_role

  acts_as_voter

  def assign_role
    if self.user_type == 'patient'
      self.add_role :patient
    elsif self.user_type =='doctor'
      self.add_role :doctor
    end
  end
end
