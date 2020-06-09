# frozen_string_literal: true

# Actions for the Athletes resource
class AthletesController < ApplicationController
  before_action :authenticate_account!
  before_action :set_athlete, only: %i[show edit update]

  def index
    @athletes = Athlete.where(account_id: current_account.id).order(last_name: :asc)
  end

  def show; end

  def new
    @athlete = Athlete.new
  end

  def edit; end

  def create
    @athlete = Athlete.new(athlete_params)
    @athlete.account_id = current_account.id

    respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'Athlete was successfully created.' }
        format.json { render :show, status: :created, location: @athlete }
      else
        format.html { render :new }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @athlete.update(athlete_params)
        format.html { redirect_to @athlete, notice: 'Athlete was successfully updated.' }
        format.json { render :show, status: :ok, location: @athlete }
      else
        format.html { render :edit }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def athlete_params
    params.require(:athlete).permit(:first_name, :last_name)
  end

  def set_athlete
    @athlete = Athlete.find(params[:id])
  end
end
