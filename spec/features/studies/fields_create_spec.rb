RSpec.feature 'Events create', :type => :feature do
  scenario 'User creates a new event' do
    given_i_am_logged_in
    when_i_create_a_study
    when_i_create_a_form
    when_i_create_a_field
    then_a_field_should_appear_in_my_form
  end

  def then_a_field_should_appear_in_my_form
    visit Features::StudyHelpers::FORMS_ONE + '/edit'
    expect(page).to have_text(Features::StudyHelpers::TEXT_NAME)
  end
end