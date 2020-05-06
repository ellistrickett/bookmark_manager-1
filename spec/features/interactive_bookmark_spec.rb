feature 'Interactive Bookmark' do 
  scenario 'takes you to website' do 
    insert_bookmark

    expect(page).to have_link 'http://www.testwebsite.com'
  end
end