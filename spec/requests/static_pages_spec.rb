require 'spec_helper'

describe "StaticPages" do
	subject { page }

  describe "home" do
    before { visit root_path }
    
    it { should have_content('What Key Am I In?') }
    it { should have_link('Sign up') }
    it { should have_link('Log in') }

    it { should have_link('All Keys') }
    it { should have_link('All Chords') }

    describe "as logged in user" do
    	before do
    		@user = FactoryGirl.create(:user)
    		@user.confirm!
    		test_sign_in(@user)
    	end
    	it { should have_content('What Key Am I In?') }
    	it { should have_content(@user.username) }
    	it { should have_content('You cannot edit notes') }

      it { should_not have_content('All Notes') }
    end

    describe "as admin" do
    	before do
    		@admin = FactoryGirl.create(:admin)
    		@admin.confirm!
    		test_sign_in(@admin)
    	end
    	it { should have_content('What Key Am I In?') }
    	it { should have_content(@admin.username) }
    	it { should have_content('You can edit notes') }

      it { should have_link('All Notes') }
    end
  end
end
