class ParticipantEventFormCondition
  def initialize(form)
    @form = form
  end

  def call
    @form.form_conditions.map do |fc|
      "$('##{fc.field.name}').condition('#{fc.conditions}').target(#{fc.targets});"
    end.join(' ')
  end
end
