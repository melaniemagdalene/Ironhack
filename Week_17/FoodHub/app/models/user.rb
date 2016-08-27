class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	has_many :foods

	validates :name, presence:true
	after_create :send_welcome_email

	enum role: [:admin, :foodie, :user]

	def owner_of_post?(food)
		self.id == food.user_id
	end

	protected

	def send_welcome_email
		WelcomeMailer.welcome_email(self).deliver_now
	end
end
