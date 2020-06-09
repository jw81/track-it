# frozen_string_literal: true

# Actions for the Games resource
class GamesController < ApplicationController
  before_action :authenticate_account!, except: %i[index show]
  before_action :validate_account, except: %i[index show]
  before_action :set_game, only: %i[show edit update complete]

  def index
    @games = Game.all.order(date_played: :asc)
  end

  def show; end

  def new
    redirect_to new_athlete_path, notice: "Looks like you do not have any Athletes.  Let's create one now!" unless has_athletes?
    @game = Game.new
  end

  def edit; end

  def create
    @game = Game.new(game_params)
    @game.account_id = current_account.id

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def complete
    @game.completed = true

    if @game.save
      redirect_to @game, notice: 'Game was successfully completed.'
    else
      redirect_to @game, notice: 'Unable to complete game.'
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:athlete_id, :opponent_id, :location_id, :notes, :result, :date_played)
  end

  def has_athletes?
    return true if Athlete.where(account_id: current_account.id).count > 0
  end
end
