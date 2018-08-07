class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.user = current_user
    @like.save!
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  private
  def like_params
    params.require(:like).permit(:deal_id)
  end
end
