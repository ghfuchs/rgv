class RestaurantsController < ApplicationController
  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurants }
    end
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
#   @restaurant = Restaurant.find(params[:id])
#   @admin = current_admin
    @restaurant = Restaurant.find(current_admin)
    $ghold_id = current_admin.id

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant }
    end
  end

  # GET /restaurants/new
  # GET /restaurants/new.json
  def new
    @restaurant = Restaurant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant }
    end
  end

  # GET /restaurants/1/edit
  def edit
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)
  end

  # GET /restaurants/1/edit_name
  def edit_name
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)
  end

  # GET /restaurants/1/edit_logo
  def edit_logo
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)
  end

      # GET /restaurants/1/edit_hours
  def edit_hours
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)
  end

      # GET /restaurants/1/edit_misc
  def edit_misc
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(params[:restaurant])

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render json: @restaurant, status: :created, location: @restaurant }
      else
        flash.now[:error] = "Could not save restaurant"
        format.html { render action: "new" }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurants/1
  # PUT /restaurants/1.json
  def update
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)

    respond_to do |format|
      if @restaurant.update_attributes(params[:restaurant])
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
#   @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(current_admin)
    @restaurant.destroy

    respond_to do |format|
      format.html { redirect_to restaurants_url }
      format.json { head :ok }
    end
  end
end
