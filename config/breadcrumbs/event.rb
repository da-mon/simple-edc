crumb :event do |event|
  link event, edit_event_path(event)
  parent :study, event.study
end

crumb :new_event do |study|
  link 'new event'
  parent :study, study
end
