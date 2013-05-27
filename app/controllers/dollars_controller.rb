class DollarsController < ApplicationController
  # GET /dollars
  # GET /dollars.json
  def index
    @dollars = Dollar.all

  end

  # GET /dollars/1
  # GET /dollars/1.json
  def show
    @dollar = Dollar.find(:first, :conditions => {:dollar_type => params[:dollar_type]}, :order => 'CREATED_at DESC')

    
  end

  # POST /dollars
  # POST /dollars.json
  def create
    @dollar = Dollar.new(params[:dollar])

    if @dollar.save
      render json: @dollar, status: :created, location: @dollar
    else
      render json: @dollar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dollars/1
  # PATCH/PUT /dollars/1.json
  def update
    @dollar = Dollar.find(params[:id])

    if @dollar.update_attributes(params[:dollar])
      head :no_content
    else
      render json: @dollar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dollars/1
  # DELETE /dollars/1.json
  def destroy
    @dollar = Dollar.find(params[:id])
    @dollar.destroy

    head :no_content
  end
end
