class  ClaimController < ApplicationController
  def create
    @food = Food.find_by_id(params[:id])
    @food.claimant = current_user.account.account_name
    # session[:first_name]
    # session[:last_name]
    @food.save!
    redirect_to foods_url
  end
end
