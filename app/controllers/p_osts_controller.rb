class POstsController < ApplicationController
  before_action :set_p_ost, only: [:show, :edit, :update, :destroy]

  # GET /p_osts
  # GET /p_osts.json
  def index
    @p_osts = POst.all
  end

  # GET /p_osts/1
  # GET /p_osts/1.json
  def show
  end

  # GET /p_osts/new
  def new
    @p_ost = POst.new
  end

  # GET /p_osts/1/edit
  def edit
  end

  # POST /p_osts
  # POST /p_osts.json
  def create
    @p_ost = POst.new(p_ost_params)

    respond_to do |format|
      if @p_ost.save
        format.html { redirect_to @p_ost, notice: 'P ost was successfully created.' }
        format.json { render :show, status: :created, location: @p_ost }
      else
        format.html { render :new }
        format.json { render json: @p_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_osts/1
  # PATCH/PUT /p_osts/1.json
  def update
    respond_to do |format|
      if @p_ost.update(p_ost_params)
        format.html { redirect_to @p_ost, notice: 'P ost was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_ost }
      else
        format.html { render :edit }
        format.json { render json: @p_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_osts/1
  # DELETE /p_osts/1.json
  def destroy
    @p_ost.destroy
    respond_to do |format|
      format.html { redirect_to p_osts_url, notice: 'P ost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_ost
      @p_ost = POst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def p_ost_params
      params.require(:p_ost).permit(:title)
    end
end
