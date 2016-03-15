module ApplicationHelper
  def link_to_delete(model)
    link_to 'Destroy', model, method: :delete, data: {confirm: 'Are you sure?'}
  end

  def back_to_study(study)
    link_to 'Back to study', study_path(study)
  end
end
