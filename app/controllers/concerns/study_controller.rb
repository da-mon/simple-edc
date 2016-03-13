module StudyController
  extend ActiveSupport::Concern

  included do
    before_action :set_study
  end

  def set_study
    @study = Study.find(params[:study_id])
  end


end