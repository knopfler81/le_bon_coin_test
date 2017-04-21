class AdvertsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_advert, only: [:show, :destroy]

  def index
    filter_adverts if params[:query].present?
    @adverts ||= Advert.all
  end

  def offers
    @adverts = Advert.all.where(role: 1)
  end

  def demandes
    @adverts = Advert.all.where(role: 0)
  end

  def show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(params_advert)
    @advert.user = current_user
    if @advert.save
      redirect_to advert_path(@advert)
    else
      render :new
    end
  end

  def  destroy
    @advert.destroy
  end

  private

  def params_advert
    params.require(:advert).permit(:type, :title, :description, :location, :price, :role, :category_id, photos: [])
  end

  def set_advert
    @advert = Advert.find(params[:id])
  end

end
