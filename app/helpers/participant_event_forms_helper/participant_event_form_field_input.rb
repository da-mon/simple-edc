module ParticipantEventFormsHelper
  class ParticipantEventFormFieldInput
    include ActionView::Helpers::FormTagHelper

    def initialize(field, i)
      @field = field
      @i = i
    end

    def call
      method(tag_method).call name, nil, type
    end

    private

    def tag_method
      case @field.field_type.to_sym
        when :text, :date, :datetime
          @field.field_type + '_field_tag'
        when :textarea
          'text_area_tag'
        when :number, :decimal
          'number_field_tag'
        when :checkbox
          'check_box_tag'
      end
    end

    def name
      "patient_event_form[patient_event_form_fields_attributes][#{@i}][field_value]"
    end

    def type
      rules = Hash['data-rule-required', 'true', 'data-rule-' + @field.field_type, 'true']
      # extras
      rules
    end
  end
end


