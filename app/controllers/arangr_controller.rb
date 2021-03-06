class ArangrController < ApplicationController

  skip_before_action :verify_authenticity_token
  # ===============
  # index route
  # ===============
  def index
    render json:  Arangr.all
  end
  # ===============
  # show route
  # ===============
  def show
    render json:  Arangr.find(params["id"])
  end
  # ===============
  # create route
  # ===============
  def create
      render json: Arangr.create(params["arangr"])
  end
  # ===============
  # delete route
  # ===============
  def delete
      render json: Arangr.delete(params["id"])
  end
  # ===============
  # update route
  # ===============
  def update
    render json: Arangr.update(params["id"], params["arangr"])
  end
end
