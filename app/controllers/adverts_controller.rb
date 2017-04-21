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
    params.require(:advert).permit(:type, :title, :description, :location, :price, :role, :user_id, :category_id, photos: [])
  end

  def set_advert
    @advert = Advert.find(params[:id])
  end

  def filter_adverts
    return if params[:query].blank?
    @adverts = Advert.search(params[:query][:keyword]).includes(:category) if params[:query][:keyword].present?
    @adverts = Advert.joins(:category).where('categories.name LIKE ?', params[:query][:category]) if params[:query][:category].present?
    @adverts = Advert.where('location LIKE ?', params[:query][:location]) if params[:query][:location].present?
  end
end
