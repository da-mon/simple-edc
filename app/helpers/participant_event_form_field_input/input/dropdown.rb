module ParticipantEventFormFieldInput
  module Input
    class Dropdown < Base
      def call
        select_tag input_name
      end
    end
  end
end


