require 'spec_helper'

describe "StaticPages" do
	subject { page }

  describe "home" do
    before { visit root_path }
    it { should have_content('Skeleton App') }
  end
end
