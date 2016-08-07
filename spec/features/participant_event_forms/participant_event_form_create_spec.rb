RSpec.feature 'Participant event form create', :type => :feature do
  scenario 'User creates a new participant event form' do
    given_i_am_logged_in
    when_i_setup_a_pef
    when_i_create_a_participant_event_form
    then_the_participant_event_form_should_be_saved
  end

  def when_i_setup_a_pef
    super()
    when_i_create_a_field do
      complete_field(Features::StudyHelpers::TEXT, 1)
    end
  end

  def then_the_participant_event_form_should_be_saved
    visit Features::StudyHelpers::PEFS_ONE + '/edit'
    expect(page).to have_text(Features::StudyHelpers::TEST_PARTICIPANT)
    expect(page).to have_selector("input[value='" + Features::StudyHelpers::TEST_PEF_FIELD_DATA + "']")
  end
end