class FoodPolicy < ApplicationPolicy
	def index?
		# These three roles have access to the index
		user.admin? || user.foodie? || user.user?
		# or write "everyone"
	end

	def show?
		everyone
	end

	def create?
		user.admin? || user.foodie?
	end

	def new?
		create?
	end

	def update?
		admin_or_owner_of_food?
	end

	def edit?
		update?
	end

	def destroy?
		admin_or_owner_of_food?
	end


	private


	def admin_or_owner_of_food?
		user.admin? || (user.foodie? && user.owner_of_food?(record))
	end

	def everyone?
		user.admin? || user.foodie? || user.user?
	end
end
