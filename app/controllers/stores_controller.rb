# frozen_string_literal: true

class StoresController < ApplicationController
  def index
    @stores = Store.all
    if params[:query_text].present?
      @stores = @stores.global_search(params[:query_text])
    end
  end

  def new
    @store = Store.new
  end

  def show
    @store = Store.find(params[:id])
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path, notice: 'New store created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])

    if @store.update(store_params)
      redirect_to stores_path, notice: 'Store edited ok'
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @store = Store.find(params[:id])
    if @store.destroy
      redirect_to stores_path, notice: 'Store deleted ok'
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :address)
  end
end
