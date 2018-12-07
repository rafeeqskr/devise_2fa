class AdminController < ActionController::Base
	before_action :admin_user

	private
	def admin_user
		redirect_to :root unless current_user.is_admin?
	end
end
