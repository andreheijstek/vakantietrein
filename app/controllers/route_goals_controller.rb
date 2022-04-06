# frozen_string_literal: true

# Main Controller
class RouteGoalsController < ApplicationController
  before_action :set_route_goal, only: %i[show edit update destroy]

  # GET /route_goals or /route_goals.json
  def index
    @route_goals = RouteGoal.all
  end

  # GET /route_goals/1 or /route_goals/1.json
  def show; end

  # GET /route_goals/new
  def new
    @route_goal = RouteGoal.new
  end

  # GET /route_goals/1/edit
  def edit; end

  # POST /route_goals or /route_goals.json
  def create
    @route_goal = RouteGoal.new(route_goal_params)

    respond_to do |format|
      if @route_goal.save
        format.html { redirect_to route_goal_url(@route_goal), notice: 'Route goal was successfully created.' }
        format.json { render :show, status: :created, location: @route_goal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @route_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_goals/1 or /route_goals/1.json
  def update
    respond_to do |format|
      if @route_goal.update(route_goal_params)
        format.html { redirect_to route_goal_url(@route_goal), notice: 'Route goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_goal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @route_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_goals/1 or /route_goals/1.json
  def destroy
    @route_goal.destroy

    respond_to do |format|
      format.html { redirect_to route_goals_url, notice: 'Route goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_route_goal
    @route_goal = RouteGoal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def route_goal_params
    params.require(:route_goal).permit(:from, :to, :date_time_reference, :date, :moment)
  end
end
