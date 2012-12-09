class Admin::StorehousesController < Admin::BaseController
  # GET /store_houses
  # GET /store_houses.json
  def index
    @storehouses = Storehouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storehouses }
    end
  end

  # GET /store_houses/1
  # GET /store_houses/1.json
  def show
    @storehouse = Storehouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storehouse }
    end
  end

  # GET /store_houses/new
  # GET /store_houses/new.json
  def new
    @storehouse = Storehouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storehouse }
    end
  end

  # GET /store_houses/1/edit
  def edit
    @storehouse = Storehouse.find(params[:id])
  end

  # POST /store_houses
  # POST /store_houses.json
  def create
    @storehouse = Storehouse.new(params[:storehouse])

    respond_to do |format|
      if @storehouse.save
        format.html { redirect_to [:admin, @storehouse], notice: 'store_house was successfully created.' }
        format.json { render json: @storehouse, status: :created, location: @storehouse }
      else
        format.html { render action: "new" }
        format.json { render json: @storehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /store_houses/1
  # PUT /store_houses/1.json
  def update
    @storehouse = Storehouse.find(params[:id])

    respond_to do |format|
      if @storehouse.update_attributes(params[:storehouse])
        format.html { redirect_to [:admin, @storehouse], notice: 'store_house was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @storehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_houses/1
  # DELETE /store_houses/1.json
  def destroy
    @storehouse = Storehouse.find(params[:id])
    if (@storehouse.destroy)
        respond_to do |format|
        format.html { redirect_to admin_storehouses_url }
        format.json { head :no_content }
      end
    end
  end


end
