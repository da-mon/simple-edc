RSpec.feature 'Events create', :type => :feature do
  scenario 'User creates a new event' do
    given_i_am_logged_in
    when_i_create_a_study
    when_i_create_an_event
    when_i_create_a_form
    when_i_create_an_event_form
    then_an_event_form_should_appear_in_my_event
  end

  def then_an_event_form_should_appear_in_my_event
    visit Features::StudyHelpers::EVENTS_ONE + '/edit'
    expect(page).to have_text(Features::StudyHelpers::TEST_FORM)
  end
end