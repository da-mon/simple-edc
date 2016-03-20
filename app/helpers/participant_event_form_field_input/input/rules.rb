module ParticipantEventFormFieldInput
  module Input
    class Rules
      def initialize(field)
        @field = field
      end

      def call
        rules = Hash['data-rule-' + @field.field_type, 'true']
        if @field.required
          rules.merge! Hash['data-rule-required', 'true']
        end
        rules
      end
    end
  end
end


