# frozen_string_literal: true

# Next Launches Interface Adapter
class NextLaunchesController < ApplicationController
  before_action :set_next_launch, only: [:upcoming]

  # GET /next_launches
  def index
    @next_launches = SpacexGateway.new.launches(:upcoming)

    render json: @next_launches
  end

  # GET /next_launches/upcoming
  def upcoming
    render json: @next_launch
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_next_launch
    @next_launch = SpacexGateway.new.launches(:next)
  end
end
