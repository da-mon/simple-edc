module ApplicationHelper
  def link_to_delete(model)
    link_to '-', model, method: :delete, data: {confirm: 'Are you sure?'}
  end

  def add
    '+'
  end

  def link_to_back(model)
    link_to "Back to #{model}", study_path(model)
  end

  def back_to_study(study)
    link_to 'Back to study', study_path(study)
  end
end
