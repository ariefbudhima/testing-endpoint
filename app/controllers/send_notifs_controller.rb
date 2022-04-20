class SendNotifsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show    
    render json: params_send_notif
  end

  def default
    render json: params, :except => [:controller, :action, :send_notif]
  end


  private
  def params_send_notif
    params.permit(
      :question_id,
      :user_id,
      :title,
      :content,
      :image_url,
      :reply_type,
      :doctor => {},
      :data => {}
    )
  end
 
  # def test_params
  #   params.permit!
  # end

end
