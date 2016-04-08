$(document).ready ->
  $('form[id*=participant_event_form]').validate()

  # methods
  $.validator.addMethod "validations", (value, element, validations) ->
    this.optional(element) ||
      eval(validations.map(v -> v[0] + ' ' + value + ' ' + v[1] + ' ' + v[2]).join(' '))
  , (params, element) -> 'Please enter a value that is ' + $(element).data('validation') + '.'