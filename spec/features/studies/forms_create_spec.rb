RSpec.feature 'Form create', :type => :feature do
  scenario 'User creates a new form' do
    given_i_am_logged_in
    when_i_create_a_study
    when_i_create_a_form
    then_a_form_should_appear_in_my_forms
  end

  def then_a_form_should_appear_in_my_forms
    visit Features::StudyHelpers::STUDIES_ONE + '/edit'
    expect(page).to have_text(Features::StudyHelpers::TEST_FORM)
  end
end