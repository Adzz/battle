# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

  feature 'View hit points' do
    scenario "View other player's hit points" do
      sign_in_and_play
      expect(page).to have_content "Health: 100"
    end
  end
