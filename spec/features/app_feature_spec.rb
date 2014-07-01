describe "edits a song", :type => :feature do
  before :each do
    Song.create({
      title: 'Smells Like Teen Spirit',
      artist: 'Metallica',
      album: 'Ride the Lightning',
      genre: 'Metal',
      length: '3:25'
  end

  it "visits a song show page" do
    visit '/songs/1'
    click_link 'Edit'
    expect(page).to have_content 'Smells Like Teen Spirit'
  end

  it "does something" do
    visit '/songs/1/edit'
    fill_in('Artist Name', :with => 'Nirvana')
    click('Button Value')
    expect(page).to have_content 'Nirvana'
  end
end