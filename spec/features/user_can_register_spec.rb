require 'rails_helper'

describe "User registration form" do
  it "creates a new user" do
    visit root_path

    click_link "Register As A User"

    fill_in :user_email, with: "alexa@example.com"
    fill_in :user_password, with: "password"

    click_button "Register"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Welcome alexa@example.com!")

  end

  it "keeps a user logged in after registering" do
    visit "/"

    click_on "Register As A User"

    email = "funbucket13"
    password = "test"

    fill_in :user_email, with: email
    fill_in :user_password, with: password

    click_button "Register"


    expect(page).to have_content("Welcome #{email}!")
  end
end
