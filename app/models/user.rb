class User < ActiveRecord::Base
	has_one :trip 

	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :trackable, :validatable,
	       :confirmable, :lockable

end
