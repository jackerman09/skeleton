class UserPresenter < BasePresenter
  presents :user
  # delegate :username, to: :user

	def h
		@template
	end

	def admin_text
		if user.admin?
			'This is an admin'
			# h.link_to root_path
		else
			'This is not an admin'
		end
	end
end