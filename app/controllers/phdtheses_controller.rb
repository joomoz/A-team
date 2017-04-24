class PhdthesesController < ApplicationController
  before_action :set_phdthesis, only: [:show, :edit, :update, :destroy]

  # GET /phdtheses
  # GET /phdtheses.json
  def index
    @phdtheses = Phdthesis.all
  end

  # GET /phdtheses/1
  # GET /phdtheses/1.json
  def show
  end

  # GET /phdtheses/new
  def new
    @phdthesis = Phdthesis.new
  end

  # GET /phdtheses/1/edit
  def edit
  end

  # POST /phdtheses
  # POST /phdtheses.json
  def create
    @phdthesis = Phdthesis.new(phdthesis_params)

    respond_to do |format|
      if @phdthesis.save
        format.html { redirect_to @phdthesis, notice: 'Phdthesis was successfully created.' }
        format.json { render :show, status: :created, location: @phdthesis }
      else
        format.html { render :new }
        format.json { render json: @phdthesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phdtheses/1
  # PATCH/PUT /phdtheses/1.json
  def update
    respond_to do |format|
      if @phdthesis.update(phdthesis_params)
        format.html { redirect_to @phdthesis, notice: 'Phdthesis was successfully updated.' }
        format.json { render :show, status: :ok, location: @phdthesis }
      else
        format.html { render :edit }
        format.json { render json: @phdthesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phdtheses/1
  # DELETE /phdtheses/1.json
  def destroy
    @phdthesis.destroy
    respond_to do |format|
      format.html { redirect_to phdtheses_url, notice: 'Phdthesis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phdthesis
      @phdthesis = Phdthesis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phdthesis_params
      params.require(:phdthesis).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
