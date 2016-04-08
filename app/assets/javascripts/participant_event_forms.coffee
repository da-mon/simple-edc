$(document).ready ->
  $.validator.addMethod 'data-rule-validations', (value, element, validations) ->
    validation = new Validation(JSON.parse(validations))
    $.validator.messages['data-rule-validations'] = "Please enter a value that is #{validation.message()}."
    this.optional(element) || eval(validation.statement(value))
  $('form[id*=participant_event_form]').validate()

class Validation
  constructor: (@validations) ->
  message: ->
    this.comp('', false)
  statement: (value) ->
    this.comp(value, true)
  comp: (value, convert) ->
    (this.connector(this.convert(v.connector, convert)) +
      value + ' ' +
      this.convert(v.operator, convert) + ' ' +
      v.operand for v in @validations).join(' ')
  connector: (con, convert) ->
    if con then con + ' ' else ''
  convert: (str, convert) ->
    if convert && str
      str = str.replace(new RegExp('^' + c + '$'), this.conversions[c]) for c of this.conversions
    str
  conversions: {
    'equal to': '==',
    'not equal to': '!=',
    'greater than': '>',
    'less than': '<',
    'greater than or equal to': '>=',
    'less than or equal to': '<=',
    'and': '&&',
    'or': '||'
  }