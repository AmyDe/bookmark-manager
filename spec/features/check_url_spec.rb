
feature 'check if valid url' do
  scenario 'user inputs an invalid url, error message should appear' do
    visit('/bookmarks')
    fill_in('url', with: 'not a real bookmark')
    click_button('Add Bookmark')
    expect(page).to have_content('You must submit a valid URL.')
  end
end
