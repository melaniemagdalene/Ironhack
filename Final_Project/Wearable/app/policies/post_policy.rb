class PostPolicy < ApplicationPolicy
	# class Scope < Scope
	# 	def resolve
	# 		if user.admin?
	# 			scope.all
	# 		else
	# 			scope.where(user_id: @user.id)
	# 		end
	# 	end
	# end

	# def permitted_attributes
	# 	if user.admin? || user.owner_of?(post)
	# 		[:title, :body, :tag_list]
	# 	else
	# 		[:tag_list]
	# 	end
	# end

	# Checks to see if User is owner of post
	def update?
		record.user_id == @user.id
	end
end
