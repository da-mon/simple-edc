module ParticipantEventFormFieldInput
  module Input
    class Checkbox < BaseInput
      def call
        check_box_tag input_name, nil, field_value == 'on'
      end
    end
  end
end


