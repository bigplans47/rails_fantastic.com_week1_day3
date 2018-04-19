require 'rails_helper'

describe "the add an album process" do
  it "add a new album" do
  visit new_artist_path
  fill_in 'Name', :with => 'Neutral Milk Hotel'
  fill_in 'Genre', :with => 'Indie folk'
  click_on 'Create Artist'
  expect(page).to have_content 'Neutral Milk Hotel'
  click_on 'Neutral Milk Hotel'
  click_on 'Add new album'
  fill_in 'Review', :with => 'This band rocks'
  fill_in 'Year', :with => '2005'
  fill_in 'Title', with: 'Long nights forever'
  click_on 'Create Album'
  expect(page). to have_content 'Long nights forever'
  end

end
