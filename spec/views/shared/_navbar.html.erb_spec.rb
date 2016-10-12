# spec/views/shared/_navbar.html.erb_spec.rb

require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  context "without profile" do
    let(:user) { create :user }

    it "renders email" do
      render
      expect(rendered).to have_content user.email
    end
  end

  context "with profile" do
    let(:profile) { create :profile }
    let(:user) { create :user, profile: profile }

    it "renders full name" do
      render
      expect(rendered).to have_content profile.first_name
      expect(rendered).to have_content profile.last_name
    end
  end
end

describe "shared/_navbar.html.erb" do

  context "user not signed in" do
    it "renderes sign up and log in links" do
      render
      expect(rendered).to have_content "Log In"
      expect(rendered).to have_content "Sign Up"
    end
  end
end
