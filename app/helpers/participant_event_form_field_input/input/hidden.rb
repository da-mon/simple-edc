module ParticipantEventFormFieldInput
  module Input
    class Hidden < Base
      def initialize(attribute, i, value)
        @attribute = attribute
        @i = i
        @value = value
      end

      def call
        hidden_field_tag input_name, @value
      end
    end
  end
end


