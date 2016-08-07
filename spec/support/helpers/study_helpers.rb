module Features
  module StudyHelpers

    TEST_STUDY = 'test_study'

    def when_i_create_a_study
      when_i_create_a('studies/new', '', 'Name', TEST_STUDY)
    end

    STUDIES_ONE = '/studies/1/'
    TEST_FORM = 'test_form'

    def when_i_create_a_form
      when_i_create_a(STUDIES_ONE, 'forms/new', 'Name', TEST_FORM)
    end

    TEST_EVENT = 'test_event'

    def when_i_create_an_event
      when_i_create_a(STUDIES_ONE, 'events/new', 'Name', TEST_EVENT)
    end

    TEST_PARTICIPANT = 'test_participant'

    def when_i_create_a_participant
      when_i_create_a(STUDIES_ONE, 'participants/new', 'Participant identifier', TEST_PARTICIPANT)
    end

    FORMS_ONE = '/forms/1'
    TEXT = 'text'

    def complete_field(type, num)
      fill_in 'Name', :with => type + '_name'
      fill_in 'Code', :with => 1
      fill_in 'Label', :with => type + '_label'
      fill_in 'Number', :with => num
      select type, :from => 'Type'
    end

    def when_i_create_a_field
      visit FORMS_ONE + '/fields/new'
      yield if block_given?
      click_button 'Submit'
    end

    def when_i_create_a_field_value(field, value, label)
      visit '/fields/' + field.to_s + '/field_values/new'
      fill_in 'Value', :with => value
      fill_in 'Label', :with => label
      click_button 'Submit'
    end

    EVENTS_ONE = '/events/1'

    def when_i_create_an_event_form
      visit EVENTS_ONE + '/event_forms/new'
      select TEST_FORM, :from => 'Form'
      click_button 'Submit'
    end

    PARTICIPANTS_ONE = '/participants/1'
    PEFS_ONE = '/participant_event_forms/1'
    TEST_PEF_FIELD_DATA = 'test_pef_field_data'
    PEFPEFFA0FV = 'participant_event_form_participant_event_form_fields_attributes_0_field_value'
    PEF_NEW = '/participant_event_forms/new?event_form_id=1'

    def when_i_create_a_participant_event_form
      when_i_create_a(PARTICIPANTS_ONE, PEF_NEW, PEFPEFFA0FV, TEST_PEF_FIELD_DATA)
    end

    def when_i_setup_a_pef
      when_i_create_a_study
      when_i_create_a_form
      when_i_create_an_event
      when_i_create_an_event_form
      when_i_create_a_participant
    end

    def labelise(str)
      str = str + '_label'
      str.downcase.capitalize.gsub!('_', ' ')
    end

    private

    def when_i_create_a(parent, child, name_input_label, test_name)
      visit parent + child
      fill_in name_input_label, :with => test_name
      click_button 'Submit'
    end
  end
end
