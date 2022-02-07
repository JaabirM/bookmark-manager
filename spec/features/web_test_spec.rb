feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('This website page works!')
    save_and_open_page
  end
end
