crumb :event_form_form do |event_form|
  link 'form'
  parent :event, event_form.event
end

crumb :event_form do |event_form|
  link event_form, edit_event_form_path(event_form)
  parent :event_form_form, event_form
end

crumb :new_event_form do |event|
  link 'new event form'
  parent :event, event
end
