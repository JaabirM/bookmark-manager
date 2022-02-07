feature 'view bookmarks page' do
  scenario 'view a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content('Makers Academy')
    expect(page).to have_content('Google')
    expect(page).to have_content('Reddit')
    save_and_open_page
  end
end
