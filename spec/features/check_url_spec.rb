
feature 'check if valid url' do
  scenario 'user inputs an invalid url, error message should appear' do
    visit('/bookmarks')
    fill_in('url', with: 'ww.blah.ji')
    click_button('Add Bookmark')
    expect(page).to have_content('Error: Invalid URL')
  end
end
