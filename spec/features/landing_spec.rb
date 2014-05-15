require 'spec_helper'

describe "visiting the website" do
 # OPTIMIZE use factory girl to build boro table so we can select boro_id
  describe "sign up process" do
    before do
      create(:boro)
    end
    it "should allow a visitor to signup as an owner" do
      visit root_path
      click_link "as a Dog Owner"
      fill_in 'First name', with: 'Jeff'
      fill_in 'Last name', with: 'Greco'
      fill_in 'Email', with: 'jeff@jeff.com'
      select("Queens", from: 'owner_boro_id')
      fill_in 'Password', with: 'jeffjeff'
      fill_in 'Password confirmation', with: 'jeffjeff'
      fill_in 'Phone', with: '5555555555'
      click_button 'Create Owner'
      expect(page).to have_content('pupPromenade')
    end
    it "should allow a visitor to signup as a walker" do
      visit root_path
      click_link "as a Dog Walker"
      fill_in 'First name', with: 'Jeff'
      fill_in 'Last name', with: 'Greco'
      fill_in 'Email', with: 'jeff@jeff.com'
       select("Queens", from: 'walker_boro_id')
      fill_in 'Password', with: 'jeffjeff'
      fill_in 'Password confirmation', with: 'jeffjeff'
      fill_in 'Phone', with: '5555555555'
      click_button 'Create Walker'
      expect(page).to have_content(' pupPromenade')
    end
  end
  describe 'sign in process' do
    before do
      create(:boro)
    end
    it "should allow a user to sign in as a owner"do
      visit root_path
      click_link "as a Dog Owner"
        fill_in 'First name', with: 'Jeff'
        fill_in 'Last name', with: 'Greco'
        fill_in 'Email', with: 'jeff@jeff.com'
        select("Queens", from: 'owner_boro_id')
        fill_in 'Password', with: 'jeffjeff'
        fill_in 'Password confirmation', with: 'jeffjeff'
        fill_in 'Phone', with: '5555555555'
        click_button 'Create Owner'
        #redirects to home
        click_on 'Login'
        fill_in 'Email', with: 'jeff@jeff.com'
        fill_in 'Password', with: 'jeffjeff'
        click_button 'Login'
        expect(page).to have_content("Owner's Profile")
    end
  end
end
