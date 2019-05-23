class NamesController < ApplicationController
  before_action :set_name, only: [:show, :edit, :update, :destroy]

  def index
    @names = Name.all
  end

  def show; end

  def new
    @name = Name.new
  end

  def edit; end

  def create
    @name = Name.new(name_params)
    respond_to do |format|
      if @name.save
        format.js
      else
        format.js { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @name.update(name_params)
        format.js
      else
        format.js { render :edit }
      end
    end
  end

  def destroy
    @name.destroy
    respond_to do |format|
      format.js { redirect_to names_url }
      format.json { head :no_content }
    end
  end

  private

  def set_name
    @name = Name.find(params[:id])
  end

  def name_params
    params.require(:name).permit(:first_name, :middle_name, :last_name)
  end
end
