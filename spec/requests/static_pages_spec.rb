require 'spec_helper'

describe "StaticPages" do
	subject { page }

  describe "home" do
    before { visit root_path }
    it { should have_content('Skeleton App') }
    it { should have_link('Sign up') }
  end

  describe "as logged in user" do
  	before do
  		@user = FactoryGirl.create(:user)
  		@user.confirm!
  		test_sign_in(@user)
  	end
  	it { should have_content('Skeleton App') }
  	it { should have_content('User Profile') }
  	it { should have_content('You cannot edit notes') }
  end

  describe "as admin" do
  	before do
  		admin = FactoryGirl.create(:admin)
  		admin.confirm!
  		test_sign_in(admin)
  	end
  	it { should have_content('Skeleton App') }
  	it { should have_content('User Profile') }
  	it { should have_content('You can edit notes') }
  end
end
