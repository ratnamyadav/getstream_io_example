class DealsController < ApplicationController
  before_action :authenticate_user!

  def index
    @deals = Deal.all
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = current_user.deals.create deals_params
    if @deal.errors.blank?
      redirect_to deals_path
    else
      render :new
    end
  end

  private

  def deals_params
    params.requires(:deal).permit(:name, :description)
  end
end
