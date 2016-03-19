module ParticipantEventFormFieldInput
  class FieldValue
    include ActionView::Helpers::FormTagHelper
    include ParticipantEventFormFieldInput::Input

    def initialize(field, i, peff)
      @peff = peff
      @field = field
      @i = i
    end

    def call
      method(field_value_tag).call input_name(@i, 'field_value'), field_value, Rules.new(@field).call
    end

    private
    def field_value
      @peff.field_value if @peff
    end

    def field_value_tag
      case @field.field_type.to_sym
        when :text, :date, :time
          @field.field_type + '_field_tag'
        when :textarea
          'text_area_tag'
        when :number, :decimal
          'number_field_tag'
        when :checkbox
          'check_box_tag'
      end
    end
  end
end


