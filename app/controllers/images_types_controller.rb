class ImagesTypesController < ApplicationController
  before_action :set_images_type, only: %i[ show edit update destroy ]

  # GET /images_types or /images_types.json
  def index
    @images_types = ImagesType.all
  end

  # GET /images_types/1 or /images_types/1.json
  def show
  end

  # GET /images_types/new
  def new
    @images_type = ImagesType.new
  end

  # GET /images_types/1/edit
  def edit
  end

  # POST /images_types or /images_types.json
  def create
    @images_type = ImagesType.new(images_type_params)

    respond_to do |format|
      if @images_type.save
        format.html { redirect_to images_type_url(@images_type), notice: "Images type was successfully created." }
        format.json { render :show, status: :created, location: @images_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @images_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images_types/1 or /images_types/1.json
  def update
    respond_to do |format|
      if @images_type.update(images_type_params)
        format.html { redirect_to images_type_url(@images_type), notice: "Images type was successfully updated." }
        format.json { render :show, status: :ok, location: @images_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @images_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images_types/1 or /images_types/1.json
  def destroy
    @images_type.destroy

    respond_to do |format|
      format.html { redirect_to images_types_url, notice: "Images type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_images_type
      @images_type = ImagesType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def images_type_params
      params.require(:images_type).permit(:image_type_description)
    end
end
