class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	validates :name, presence:true
	after_create :send_welcome_email

	protected

	def send_welcome_email
		WelcomeMailer.welcome_email(self).deliver_now
	end
end
