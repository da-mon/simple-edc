# crumb :event_study do |event|
#   link 'events'
#   parent :edit_study, event.study
# end

crumb :event do |event|
  link event, edit_event_path(event)
  parent :edit_study, event.study
end

crumb :new_event do |study|
  link 'new event'
  parent :edit_study, study
end
