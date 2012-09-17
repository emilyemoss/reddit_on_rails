class AdminAbility
	include CanCan:ability
	
	def initialize(user)
		if user && user.admin?
			can :access, :rails_admin
			can :manage, :all
		end
	end
end