class CommentPolicy < ApplicationPolicy
	def new
		true
	end 

	def show
		true
	end

	def create
		new?
	end  
end 