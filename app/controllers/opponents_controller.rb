class OpponentsController < ApplicationController
  before_action :set_opponent, only: %i[show edit update]

  def index
    @opponents = Opponent.all
  end

  def show; end

  def new
    @opponent = Opponent.new
  end

  def edit; end

  def create
    @opponent = Opponent.new(opponent_params)

    respond_to do |format|
      if @opponent.save
        format.html { redirect_to @opponent, notice: 'Opponent was successfully created.' }
        format.json { render :show, status: :created, location: @opponent }
      else
        format.html { render :new }
        format.json { render json: @opponent.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @opponent.update(opponent_params)
        format.html { redirect_to @opponent, notice: 'Opponent was successfully created.' }
        format.json { render :show, status: :ok, location: @opponent }
      else
        format.html { render :edit }
        format.json { render json: @opponent.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_opponent
    @opponent = Opponent.find(params[:id])
  end

  def opponent_params
    params.require(:opponent).permit(:name)
  end
end
