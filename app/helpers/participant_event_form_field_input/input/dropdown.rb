module ParticipantEventFormFieldInput
  module Input
    class Dropdown < BaseInput
      include ActionView::Helpers::FormOptionsHelper

      def call
        select_tag input_name,
                   options_from_collection_for_select(@field.field_values, 'field_value', 'label', field_value),
                   {:prompt => '--Select--'}
      end
    end
  end
end


