feature 'Home page' do
	scenario 'The player enters a name' do
		visit('/')
	  fill_in :name, with: 'Lisa'
	  click_button 'submit'
	  expect(page).to have_content 'Welcome Lisa!'
	end
end
