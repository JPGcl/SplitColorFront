class ImagesController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite
  before_action :authenticate_user! 
  before_action :set_image, only: %i[ show edit update destroy ]
  before_action :set_image_favorito

  def toggle_favorite
    @image = Image.find_by(id: params[:id])
    current_user.favorited?(@image) ? current_user.unfavorite(@image) : current_user.favorite(@image)
  end

  # GET /images or /images.json
  def index
    @q = []
    @images = []
    if params[:description].present? 
      @q = Image.where("description like ? and username = ?", "#{params[:description]}", "#{current_user.username}").ransack(params[:q])
    else
      #@q = Image.all.page(params[:page]).ransack(params[:q])
      p "++++++++++++++++++++++++++#{current_user.username}+++++++++++++++++++++++++++"
      p "+++++++++++++++++++++++ params[:q] +++#{params[:q]}+++++++++++++++++++++++++++"
      @q = Image.where("username = ?",  "#{current_user.username}").page(params[:page]).ransack(params[:q])
      p "++++++++++++++++++++++++++#{@q}+++++++++++++++++++++++++++"
    end
    @images = @q.result(distinct: true)
    p "++++++++++++++++++++++++++#{@images}+++++++++++++++++++++++++++"
    #
  end

  # if params[:description].present? 
  #   @q = Image.where("description like ? and username = ?", "#{params[:description]}", current_user  ).ransack(params[:q])
  #   @images = @q.result(distinct: true)
  # else
  #   #@q = Image.all.page(params[:page]).ransack(params[:q])
  #   @q = Image.find_by("id = ?",  current_user)
  # end

  # if @q.class != NilClass
  #   @images = @q.result(distinct: true)
  # else
  #   @images = ""
  # end


  # def index
  #   @q = []
  #   @images = []
  #   #p "*********************"    
  #   #p params[:description].present?
  #   #p "*********************"    
  #   if params[:description].present? 
  #     @q = Image.where("description like ?", "#{params[:description]}").ransack(params[:q])
  #   else
  #     @q = Image.all.page(params[:page]).ransack(params[:q])
  #   end
  #   @images = @q.result(distinct: true)
  # end




  # GET /images/1 or /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
    # no funciona para volver a la página actual de kaminari: session[:return_to] = request.referer
  end

  # POST /images or /images.json
  def create
    @image = Image.new(image_params)
    @image.username = current_user.username

    respond_to do |format|
      if @image.save
        format.html { redirect_to image_url(@image), notice: "Image was successfully created." }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1 or /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to image_url(@image), notice: "Image was successfully updated." }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1 or /images/1.json
  def destroy
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url, status: :see_other, notice: "Image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def view_images_rel 
    #@image_rel = Image.find_by(id: params[:id])
    
    #@images_rel = []
    #@images_in = []
    #@images_rel  = current_user.favorites_by_type('Image') 

    #@images_rel.each do |image_rel| 
    #  @images_in << image_rel.favoritable_id
    #end
     
    #@images_favoritas = Image.where(id: @images_in)
    #p ">>>>>>> @images_favoritas.count -> #{@images_favoritas.count}"
    #@images_favoritas

    #gon.image_rel = "image_relacionada"

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    def set_image_favorito
      #@qfav = []
      #@qfav = Image.where("fav = 'true' ").last(5)
      #@images_favoritas = @qfav
      
      #p Favorite.for_favoritor(current_user)
      #p Favorite.for_favoritor(current_user).count
      #p current_user.favorites_by_type('Image').count
      #p current_user.favorites_by_type('Image')
      #p current_user.favoritors
      
      @images_favoritas = []
      @images_in = []
      @images_favoritas = current_user.favorites_by_type('Image') 

      @images_favoritas.each do |image_favorita| 
        @images_in << image_favorita.favoritable_id
      end
      @images_favoritas = Image.where(id: @images_in)
      #p ">>>>>>> @images_favoritas.count -> #{@images_favoritas.count}"
      #@images_favoritas = @images.result(distinct: true)
    end

    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:image).permit(:username, :image_type_id, :description, :input_hash, :output_hash, :image_parent_id, :image_url, :image_local_url, :date_input_hash, :date_output_hash, :image_fav, :main_picture, canvas: [])
    end
end
