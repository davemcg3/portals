module ApplicationHelper

  def user_session_link
    Rails.logger.debug "current user present? #{current_user.present?}"
    return button_to :Logout, 
      :destroy_user_session,
      method: :delete  if current_user.present?
    link_to :Login, :new_user_session
  end

  def user_register_link
    link_to :Register, :new_user_registration if current_user.nil?
  end

end
