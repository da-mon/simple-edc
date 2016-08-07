RSpec.feature 'Study create', :type => :feature do
  scenario 'User creates a new study' do
    given_i_am_logged_in
    when_i_create_a_study
    then_a_study_should_appear_in_my_studies
  end

  def then_a_study_should_appear_in_my_studies
    visit '/'
    expect(page).to have_text('test')
  end
end