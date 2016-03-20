module ParticipantEventFormFieldInput
  module Input
    class Radio < Base
      def call
        @field.field_values.map do |f|
          radio_button_tag(input_name,
                           f.field_value,
                           field_value == f.field_value) + ' ' + f.label
        end.join(' ').html_safe
      end
    end
  end
end


