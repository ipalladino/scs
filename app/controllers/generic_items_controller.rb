class GenericItemsController < ApplicationController
  before_action :set_generic_item, only: [:show, :edit, :update, :destroy]

  # GET /generic_items
  # GET /generic_items.json
  def index
    @generic_items = GenericItem.all
  end

  # GET /generic_items/1
  # GET /generic_items/1.json
  def show
  end

  def preview
    @generic_item = GenericItem.find(params[:id])
  end

  # GET /generic_items/new
  def new
    if(params[:parent_item_id] == nil)
      @generic_item = GenericItem.new
    else
      @generic_item = GenericItem.new(parent_item_id: params[:parent_item_id])
      @defaults = GenericItem.available_fields(@generic_item.parent.component.to_s, true)
    end
  end

  # GET /generic_items/1/edit
  def edit
    session[:return_to] ||= request.referer
    if(@generic_item.parent)
      @defaults = GenericItem.available_fields(@generic_item.parent.component.to_s, true)
    end
  end

  def get_default
    @defaults = GenericItem.available_fields(params[:component])
    render json: @defaults
  end

  # POST /generic_items
  # POST /generic_items.json
  def create
    @generic_item = GenericItem.new(generic_item_params)

    respond_to do |format|
      if @generic_item.save
        format.html { redirect_to @generic_item, notice: 'Generic item was successfully created.' }
        format.json { render :show, status: :created, location: @generic_item }
      else
        format.html { render :new }
        format.json { render json: @generic_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_items/1
  # PATCH/PUT /generic_items/1.json
  def update
    respond_to do |format|
      if @generic_item.update(generic_item_params)
        format.html { redirect_to session.delete(:return_to), notice: 'Generic item was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_item }
      else
        format.html { render :edit }
        format.json { render json: @generic_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_items/1
  # DELETE /generic_items/1.json
  def destroy
    @generic_item.destroy
    respond_to do |format|
      format.html { redirect_to generic_items_url, notice: 'Generic item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_item
      @generic_item = GenericItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_item_params
      params.require(:generic_item).permit(:title, :description, :graphic, :button_link, :button_text, :component, :parent_item_id, :priority, :background_color, :color, :icon, :icon_color)
    end
end
