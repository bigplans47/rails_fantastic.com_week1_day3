require 'rails_helper'

describe "the add an artist process" do
  it "adds a new artist" do
    visit new_artist_path
    fill_in 'Name', :with => 'Neutral Milk Hotel'
    fill_in 'Genre', :with => 'Indie folk'
    click_on 'Create Artist'
    expect(page).to have_content 'Artists'
  end

  it "gives error when no name is entered" do
    visit new_artist_path
    click_on 'Create Artist'
    expect(page).to have_content 'errors'
  end
end
