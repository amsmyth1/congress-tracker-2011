require 'rails_helper'

describe "user can log in" do
  it "with valid credentials" do

    user = User.create(email: "alex@example.com", password: "password")
    visit root_path

    click_link "I already have an account"

    expect(current_path).to eq(login_path)

    fill_in :email, with: user.email
    fill_in :password, with: 'password'

    click_button "Log In"

    expect(current_path).to eq(root_path)

    expect(page).to have_content("Welcome #{user.email}!")
    expect(page).to_not have_link('I already have an account')
    expect(page).to_not have_link('Register As A New User')
    expect(page).to have_link('Log Out')

  end

  it "with invalid credentials" do
    user = User.create(email: "alex@example.com", password: "password")
    visit root_path

    click_link "I already have an account"

    expect(current_path).to eq(login_path)

    fill_in :email, with: user.email
    fill_in :password, with: 'notmypassword'

    click_button "Log In"

    expect(current_path).to eq(login_path)

    expect(page).to have_content("email or password is incorrect")

  end
end
