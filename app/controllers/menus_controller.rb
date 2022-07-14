class MenusController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_menu, only: %i[ show edit update destroy ]
  #before_action :set_menu_favorito, only: %i[ show edit update destroy ]
  before_action :set_menu_favorito
  #attr_accessor :menu_favorito

  #def initialize
      #@menu_favorito = set_menu_favorito
  #end

  # GET /menus or /menus.json
  def index
    #@menus = Menu.all.sort_by(&:name)
    #@pager = Kaminari.paginate_array(@menus["name"]).page(params[:page]).per(4)
    #@q = Kaminari.paginate_array(@menus["name"]).page(params[:page]).ransack(params[:q])
    @q = []
    @menus = []
    #@menus = Menu.all.sort_by(&:name)
    #p @menus.class
      
    #@menus = Menu.all.page(params[:page]) -> Esta opción es válida si orden.
    #@q = Menu.all.page(params[:page]) 
    #@menus = @q.result(distinct: true)

    #@menus = Kaminari.paginate_array(@menus).page(params[:page])
    #|.ransack(params[:q])
    #@menus = @q.result(distinct: true)
  if params[:name].present? 
    @q = Menu.where("name like ?", "#{params[:name]}").ransack(params[:q])
  else
    @q = Menu.all.page(params[:page]).ransack(params[:q])
  end
  @menus = @q.result(distinct: true)

end


# GET /menus/1 or /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  def card
    #@menu = Menu.find(params[:id])
  end

  # POST /menus or /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to menu_url(@menu), notice: "Menu was successfully created." }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1 or /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to menu_url(@menu), notice: "Menu was successfully updated." }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1 or /menus/1.json
  def destroy
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to menus_url, status: :see_other, notice: "Menu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def set_menu_favorito
      #p "<< set_menu_favorito >>"
      @menus_favoritos = []
      @qfav = []
      #if params[:fav].present? 
        @qfav = Menu.where("fav = 'true' ").last(5)
      #else
      #  @qfav = Menu.last(3)
      #end
      #p "<< #{@qfav.count} >>"
      #p "<< #{@qfav} >>"
      @menus_favoritos = @qfav
    end
    
    # Only allow a list of trusted parameters through.
    def menu_params
      params.require(:menu).permit(:card_type, :icon, :name, :description, :rute, :fav)
    end
end
