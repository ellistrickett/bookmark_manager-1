def insert_bookmark
  
  visit('/bookmarks')

  fill_in('url', with: 'http://www.testwebsite.com')
  fill_in('title', with: 'Test Website')
  click_button('submit')

end