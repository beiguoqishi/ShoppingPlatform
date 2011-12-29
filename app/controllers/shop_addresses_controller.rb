class ShopAddressesController < ApplicationController
  # GET /shop_addresses
  # GET /shop_addresses.json
  def index
    @shop_addresses = ShopAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @shop_addresses }
    end
  end

  # GET /shop_addresses/1
  # GET /shop_addresses/1.json
  def show
    @shop_address = ShopAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @shop_address }
    end
  end

  # GET /shop_addresses/new
  # GET /shop_addresses/new.json
  def new
    @shop_address = ShopAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @shop_address }
    end
  end

  # GET /shop_addresses/1/edit
  def edit
    @shop_address = ShopAddress.find(params[:id])
  end

  # POST /shop_addresses
  # POST /shop_addresses.json
  def create
    @shop_address = ShopAddress.new(params[:shop_address])

    respond_to do |format|
      if @shop_address.save
        format.html { redirect_to @shop_address, :notice => 'Shop address was successfully created.' }
        format.json { render :json => @shop_address, :status => :created, :location => @shop_address }
      else
        format.html { render :action => "new" }
        format.json { render :json => @shop_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shop_addresses/1
  # PUT /shop_addresses/1.json
  def update
    @shop_address = ShopAddress.find(params[:id])

    respond_to do |format|
      if @shop_address.update_attributes(params[:shop_address])
        format.html { redirect_to @shop_address, :notice => 'Shop address was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @shop_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_addresses/1
  # DELETE /shop_addresses/1.json
  def destroy
    @shop_address = ShopAddress.find(params[:id])
    @shop_address.destroy

    respond_to do |format|
      format.html { redirect_to shop_addresses_url }
      format.json { head :ok }
    end
  end
end
