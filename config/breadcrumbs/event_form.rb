crumb :event_form do |event_form|
  link event_form, event_form_path(event_form)
  parent :event, event_form.event
end

crumb :new_event_form do |event|
  link 'new event form'
  parent :event, event
end
