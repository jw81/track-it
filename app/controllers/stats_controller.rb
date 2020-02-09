# frozen_string_literal: true

# Actions for the Stats resource
class StatsController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @stat = params[:type].constantize.send(:new, game_id: @game.id)

    respond_to do |format|
      if @stat.save
        format.html { redirect_to @game, notice: 'Stat was successfully created.' }
        format.json { render json: 'Do something here.', location: @stat }
      else
        format.html { redirect_to @game, notice: 'Unable to process Stat.' }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game = Game.find(params[:game_id])
    @stat = Stat.find(params[:id])

    @stat.destroy
    respond_to do |format|
      format.html { redirect_to @game, notice: 'Stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
