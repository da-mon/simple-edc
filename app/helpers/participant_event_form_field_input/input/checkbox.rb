module ParticipantEventFormFieldInput
  module Input
    class Checkbox < Base
      def call
        check_box_tag input_name
      end
    end
  end
end


