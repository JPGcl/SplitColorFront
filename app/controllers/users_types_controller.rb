class UsersTypesController < ApplicationController
  before_action :set_users_type, only: %i[ show edit update destroy ]

  # GET /users_types or /users_types.json
  def index
    @users_types = UsersType.all
  end

  # GET /users_types/1 or /users_types/1.json
  def show
  end

  # GET /users_types/new
  def new
    @users_type = UsersType.new
  end

  # GET /users_types/1/edit
  def edit
  end

  # POST /users_types or /users_types.json
  def create
    @users_type = UsersType.new(users_type_params)

    respond_to do |format|
      if @users_type.save
        format.html { redirect_to users_type_url(@users_type), notice: "Users type was successfully created." }
        format.json { render :show, status: :created, location: @users_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_types/1 or /users_types/1.json
  def update
    respond_to do |format|
      if @users_type.update(users_type_params)
        format.html { redirect_to users_type_url(@users_type), notice: "Users type was successfully updated." }
        format.json { render :show, status: :ok, location: @users_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_types/1 or /users_types/1.json
  def destroy
    @users_type.destroy

    respond_to do |format|
      format.html { redirect_to users_types_url, notice: "Users type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_type
      @users_type = UsersType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_type_params
      params.require(:users_type).permit(:user_description)
    end
end
