module ParticipantEventFormFieldInput
  module Input
    class Text < Base
      def call
        method(field_value_tag).call input_name, field_value, Rules.new(@field).call
      end

      private

      def field_value_tag
        case @field.field_type.to_sym
          when :text, :date, :time, :number
            @field.field_type + '_field_tag'
          when :textarea
            'text_area_tag'
          when :decimal
            'number_field_tag'
        end
      end
    end
  end
end


