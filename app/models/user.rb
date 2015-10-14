class User < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :password, length: {minimum: 6}
	validates_uniqueness_of :email
	validates :email, :password_digest, confirmation: true

	has_secure_password
	has_many :tips
	has_many :favorite_stations
	has_many :stations, :through => :favorite_stations

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
