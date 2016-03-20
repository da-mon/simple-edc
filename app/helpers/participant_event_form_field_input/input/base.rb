module ParticipantEventFormFieldInput
  module Input
    class Base
      include ActionView::Helpers::FormTagHelper

      def initialize(attribute, field, i, peff)
        @attribute, @field, @i, @peff = attribute, field, i, peff
      end

      private
      def input_name
        "participant_event_form[participant_event_form_fields_attributes][#{@i}][#{@attribute}]"
      end

    end
  end
end
