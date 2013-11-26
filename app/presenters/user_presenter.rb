class UserPresenter < BasePresenter
  presents :user
  delegate :username, to: :user

	def h
		@template
	end

	def admin_text
		if @user.admin?
			'<dt>This is an admin</dt>'
			h.link_to root_path
		else
			'<dt>This is not an admin</dt>'
		end
	end
end