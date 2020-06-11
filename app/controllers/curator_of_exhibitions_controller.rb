class CuratorOfExhibitionsController < ApplicationController
  before_action :set_curator_of_exhibition, only: [:show, :edit, :update, :destroy]

  # GET /curator_of_exhibitions
  # GET /curator_of_exhibitions.json
  def index
    @curator_of_exhibitions = CuratorOfExhibition.all
  end

  # GET /curator_of_exhibitions/1
  # GET /curator_of_exhibitions/1.json
  def show
  end

  # GET /curator_of_exhibitions/new
  def new
    @curator_of_exhibition = CuratorOfExhibition.new
  end

  # GET /curator_of_exhibitions/1/edit
  def edit
  end

  # POST /curator_of_exhibitions
  # POST /curator_of_exhibitions.json
  def create
    @curator_of_exhibition = CuratorOfExhibition.new(curator_of_exhibition_params)

    respond_to do |format|
      if @curator_of_exhibition.save
        format.html { redirect_to @curator_of_exhibition, notice: 'Curator of exhibition was successfully created.' }
        format.json { render :show, status: :created, location: @curator_of_exhibition }
      else
        format.html { render :new }
        format.json { render json: @curator_of_exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curator_of_exhibitions/1
  # PATCH/PUT /curator_of_exhibitions/1.json
  def update
    respond_to do |format|
      if @curator_of_exhibition.update(curator_of_exhibition_params)
        format.html { redirect_to @curator_of_exhibition, notice: 'Curator of exhibition was successfully updated.' }
        format.json { render :show, status: :ok, location: @curator_of_exhibition }
      else
        format.html { render :edit }
        format.json { render json: @curator_of_exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curator_of_exhibitions/1
  # DELETE /curator_of_exhibitions/1.json
  def destroy
    @curator_of_exhibition.destroy
    respond_to do |format|
      format.html { redirect_to curator_of_exhibitions_url, notice: 'Curator of exhibition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curator_of_exhibition
      @curator_of_exhibition = CuratorOfExhibition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curator_of_exhibition_params
      params.require(:curator_of_exhibition).permit(:name, :about, :cover)
    end
end
