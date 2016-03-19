module ParticipantEventFormFieldInput
  class Hidden
    include ActionView::Helpers::FormTagHelper
    include ParticipantEventFormFieldInput::Input

    def initialize(name, i, value)
      @name = name
      @i = i
      @value = value
    end

    def call
      hidden_field_tag input_name(@i, @name), @value
    end
  end
end


