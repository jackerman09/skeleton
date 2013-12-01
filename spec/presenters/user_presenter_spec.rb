require 'spec_helper'

describe UserPresenter do
  it "says when none given" do
    presenter = UserPresenter.new(User.new, view)
    presenter.admin_text.should include('This is not an admin')
  end
end