class ChampionsController < ApplicationController
  before_action :set_champion, only: [:show, :update, :destroy]

  # GET /champions
  def index
    @champions = Champion.all.as_json
    render xml: @champions
  end

  # GET /champions/1
  def show
    render xml: @champion.as_json
  end

  # POST /champions
  def create
    @champion = Champion.new(champion_params)
    if @champion.save
      render xml: @champion.as_json, status: :created, location: @champion
    else
      render xml: @champion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /champions/1
  def update
    if @champion.update(champion_params)
      render xml: @champion.as_json
    else
      render xml: @champion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /champions/1
  def destroy
    @champion.destroy
  end

  private
    def set_champion
      @champion = Champion.find(params[:id])
    end

    def champion_params
      params_from_xml = Hash.from_xml(request.body.read)["champion"]
      ActionController::Parameters.new(params_from_xml).permit(:name, :role, :difficulty, :price)
    end
end
