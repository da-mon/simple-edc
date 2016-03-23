module ParticipantEventFormFieldInput
  module Input
    class Hidden < BaseInput
      def initialize(attribute, i, value)
        @attribute, @i, @value = attribute, i, value
      end

      def call
        hidden_field_tag input_name, @value
      end
    end
  end
end


