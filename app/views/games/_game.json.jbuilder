# frozen_string_literal: true

json.extract! game, :id, :opponent_id, :location_id, :notes, :created_at, :updated_at
json.url game_url(game, format: :json)
