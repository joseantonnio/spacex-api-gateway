# frozen_string_literal: true

# Previous Launches Interface Adapter
class PreviousLaunchesController < ApplicationController
  before_action :set_previous_launch, only: [:latest]

  # GET /previous_launches
  def index
    @previous_launches = SpacexGateway.new.launches(:past)

    render json: @previous_launches
  end

  # GET /previous_launches/latest
  def latest
    render json: @previous_launch
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_previous_launch
    @previous_launch = SpacexGateway.new.launches(:latest)
  end
end
