class CommentsTypesController < ApplicationController
  before_action :set_comments_type, only: %i[ show edit update destroy ]

  # GET /comments_types or /comments_types.json
  def index
    @comments_types = CommentsType.all
  end

  # GET /comments_types/1 or /comments_types/1.json
  def show
  end

  # GET /comments_types/new
  def new
    @comments_type = CommentsType.new
  end

  # GET /comments_types/1/edit
  def edit
  end

  # POST /comments_types or /comments_types.json
  def create
    @comments_type = CommentsType.new(comments_type_params)

    respond_to do |format|
      if @comments_type.save
        format.html { redirect_to comments_type_url(@comments_type), notice: "Comments type was successfully created." }
        format.json { render :show, status: :created, location: @comments_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comments_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments_types/1 or /comments_types/1.json
  def update
    respond_to do |format|
      if @comments_type.update(comments_type_params)
        format.html { redirect_to comments_type_url(@comments_type), notice: "Comments type was successfully updated." }
        format.json { render :show, status: :ok, location: @comments_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comments_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments_types/1 or /comments_types/1.json
  def destroy
    @comments_type.destroy

    respond_to do |format|
      format.html { redirect_to comments_types_url, notice: "Comments type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comments_type
      @comments_type = CommentsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comments_type_params
      params.require(:comments_type).permit(:commment_description)
    end
end
