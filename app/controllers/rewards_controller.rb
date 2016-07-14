class RewardsController < ApplicationController

  def create
    @reward = Reward.new(reward_params)
  end

  private

  def reward_params
    params.require(:reward).permit(:name, :description, :amount);
  end
end
