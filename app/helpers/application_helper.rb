module ApplicationHelper
  def link_to_delete(model)
    link_to '-', model, method: :delete, data: {confirm: 'Are you sure?'}
  end

  def add
    '+'
  end
end
