module ParticipantEventFormFieldInput
  module Input
    class Rules
      def initialize(field)
        @field = field
      end

      def call
        rules = Hash['data-rule-' + @field.field_type, 'true']
        rules.merge! Hash['data-rule-required', 'true'] if @field.required
      end
    end
  end
end


