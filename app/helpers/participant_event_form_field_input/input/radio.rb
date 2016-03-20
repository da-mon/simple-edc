module ParticipantEventFormFieldInput
  module Input
    class Radio < Base
      def call
        radio_button_tag input_name, @i
      end
    end
  end
end


