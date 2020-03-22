# frozen_string_literal: true

# Actions for the Games resource
class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update complete]

  def index
    @games = Game.all.order(date_played: :asc)
  end

  def show; end

  def new
    @game = Game.new
  end

  def edit; end

  def create
    @game = Game.new(game_params)

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
    params.require(:game).permit(:opponent_id, :location_id, :notes, :result, :date_played)
  end
end
