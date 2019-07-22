feature 'playing a game' do

  SCISSORS = 647427

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


	scenario 'computer choses a random option' do
		click_button 'play'
		srand(SCISSORS)
		click_button 'Rock'
    expect(page).to have_content "You chose rock! Computer chose scissors! You won! Play again!"
	end

  context 'end game' do
    scenario 'I win' do
		  click_button 'play'
		  srand(SCISSORS)
  	  click_button 'Rock'
		  expect(page).to have_content 'You won!'
    end
  end
 end

# 	message = find(:css, "#computer").text.strip
#
# 	def possible_messages
# 		["Rock", "Paper", "Scissors"].map { |shape| "Computer chose #{shape}!"}
#   end
# end
