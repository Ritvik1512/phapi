class StaticController < ApplicationController
  def index
    render json: { error: 'lol to get lol posts as json.' }
  end
end
