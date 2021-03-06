class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def show
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @portfolio_item.update_attributes(portfolio_params)
      redirect_to portfolios_url
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio_item.destroy
    flash[:success] = "Post successfully deleted"
    redirect_to portfolios_url
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:id, :name, :_destroy])
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
