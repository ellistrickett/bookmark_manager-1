feature 'adding bookmarks' do
  scenario 'user adds a single bookmark' do
    visit('/bookmarks')

    fill_in('url', with: 'http://www.testwebsite.com')
    click_button('submit')

    expect(page).to have_content('http://www.testwebsite.com')
  end
end
