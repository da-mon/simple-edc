RSpec.feature 'Participant create', :type => :feature do
  scenario 'User creates a new participant' do
    given_i_am_logged_in
    when_i_create_a_study
    when_i_create_a_participant
    then_a_participant_should_appear_in_my_participants
  end

  def then_a_participant_should_appear_in_my_participants
    visit Features::StudyHelpers::STUDIES_ONE
    expect(page).to have_text(Features::StudyHelpers::TEST_PARTICIPANT)
  end
end