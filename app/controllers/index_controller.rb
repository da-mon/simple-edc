class IndexController < ApplicationController
  def index
    @studies = current_user.studies
  end
end
