class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable
         
  validates_presence_of :first_name, :last_name
  
  def full_name
    "#{first_name.capitalize}  #{last_name.capitalize}"
  end
  
end
