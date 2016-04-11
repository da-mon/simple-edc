module ParticipantEventFormFieldInput
  class FieldValue
    def initialize(field, i, peff)
      @field, @i, @peff = field, i, peff
    end

    def call
      input_class.new('field_value', @field, @i, @peff).call
    end

    private

    def input_class
      Object.const_get("ParticipantEventFormFieldInput::Input::#{input_class_name.capitalize}")
    end

    def input_class_name
      case @field.field_type.to_sym
        when :radio, :checkbox, :dropdown
          @field.field_type
        else
          'text'
      end
    end
  end
end


