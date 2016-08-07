RSpec.feature 'Participant event forms', :type => :feature do
  scenario 'Field exists' do
    given_i_am_logged_in
    when_i_setup_a_pef
    then_the_pef_field_inputs_should_be_correct
  end

  TEXTAREA = 'textarea'
  NUMBER = 'number'
  DECIMAL = 'decimal'
  DATE = 'date'
  TIME = 'time'
  CHECKBOX = 'checkbox'
  RADIO = 'radio'
  DROPDOWN = 'dropdown'

  def when_i_setup_a_pef
    super()
    when_i_create_a_field do
      complete_field(Features::StudyHelpers::TEXT, 1)
    end
    when_i_create_a_field do
      complete_field(TEXTAREA, 2)
    end
    when_i_create_a_field do
      complete_field(NUMBER, 3)
    end
    when_i_create_a_field do
      complete_field(DECIMAL, 4)
    end
    when_i_create_a_field do
      complete_field(DATE, 5)
    end
    when_i_create_a_field do
      complete_field(TIME, 6)
    end
    when_i_create_a_field do
      complete_field(CHECKBOX, 7)
    end
    when_i_create_a_field do
      complete_field(RADIO, 8)
    end
    when_i_create_a_field_value(8, 'value', 'label')
    when_i_create_a_field do
      complete_field(DROPDOWN, 9)
    end
    when_i_create_a_field_value(9, 'value', 'label')
  end

  def then_the_pef_field_inputs_should_be_correct
    visit Features::StudyHelpers::PARTICIPANTS_ONE + Features::StudyHelpers::PEF_NEW

    expect(page).to have_text(labelise(Features::StudyHelpers::TEXT))
    expect(page).to have_selector("input[type='text'][data-rule-text='true']")

    expect(page).to have_text(labelise(TEXTAREA))
    expect(page).to have_selector("textarea[data-rule-textarea='true']")

    expect(page).to have_text(labelise(NUMBER))
    expect(page).to have_selector("input[type='number'][data-rule-number='true']")

    expect(page).to have_text(labelise(DECIMAL))
    expect(page).to have_selector("input[type='number'][data-rule-decimal='true']")

    expect(page).to have_text(labelise(DATE))
    expect(page).to have_selector("input[type='date'][data-rule-date='true']")

    expect(page).to have_text(labelise(TIME))
    expect(page).to have_selector("input[type='time'][data-rule-time='true']")

    expect(page).to have_text(labelise(CHECKBOX))
    expect(page).to have_selector("input[type='checkbox']")

    expect(page).to have_text(labelise(RADIO))
    expect(page).to have_selector("input[type='radio'][value='value']")

    expect(page).to have_text(labelise(DROPDOWN))
    expect(page).to have_selector("select")
    expect(page).to have_selector("option[value='value']")
  end
end