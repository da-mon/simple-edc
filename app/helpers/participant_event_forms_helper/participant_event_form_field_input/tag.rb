module ParticipantEventFormsHelper
  module ParticipantEventFormFieldInput
    class Tag
      include ActionView::Helpers::FormTagHelper

      def initialize(field, i)
        @field = field
        @i = i
      end

      def call
        method(method_tag).call name, nil, Rules.new(@field).call
      end

      private

      def method_tag
        case @field.field_type.to_sym
          when :text, :date, :time
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
    end
  end
end


