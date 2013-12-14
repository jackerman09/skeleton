class StaticPagesPresenter

  def initialize(template)
    @template = template
    yield self if block_given?
  end

  def h
    @template
  end

  def is_admin
    if h.current_user && h.current_user.admin?
      'You\'re an admin!'
    else
    	'You\'re not an admin'
    end
  end

  def can_edit_notes
		if h.can? :create, Note
      'You can edit notes.'
    else
    	'You cannot edit notes.'
		end
  end

end