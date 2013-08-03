require 'spec_helper'

describe "HomePage", js: true do 

  before do 
    visit root_path
    @answer = FactoryGirl.create(:answer)
  end
  
  it "should be 3 players by default" do 
    num_players = page.all(".player").length
    expect(num_players).to eql(3)
  end

  it "displays a question with an answer when starting a game", js: true do 
    click_link "Start Game"
    expect(page).to have_content(@answer.question.query)
  end

  
end
