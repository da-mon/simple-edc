class SessionsController < Devise::SessionsController
  before_filter :remove_authentication_flash_message

  private

  def remove_authentication_flash_message
    if flash[:alert] == I18n.t('devise.failure.unauthenticated')
      flash[:alert] = nil
    end
  end
end