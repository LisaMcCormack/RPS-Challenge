feature 'playing a game' do
	before do
		visit('/')
	  fill_in :name, with: 'Lisa'
	  click_button 'submit'
	end

	scenario 'it should welcome the player' do
    expect(page).to have_content("Welcome Lisa!")
	  click_button 'play'
    expect(page).to have_button 'Rock'
		expect(page).to have_button 'Paper'
		expect(page).to have_button 'Scissors'
  end
end

	# scenario 'computer choses rock' do
	# 	click_button 'Rock'
	# 	message = find(:css, "#computer").text.strip
	# 	expect(page).to include message
	# end
	#
	# def possible_messages
	# 	["Rock", "Paper", "Scissors"].map { |shape| "Computer chose #{shape}!"}
  # end
