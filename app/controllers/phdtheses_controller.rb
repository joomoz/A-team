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
    @entry_type = "phdthesis"
  end

  # POST /phdtheses
  # POST /phdtheses.json
  def create
    @phdthesis = Phdthesis.new(phdthesis_params)
    if @phdthesis.key.blank?
        @phdthesis.create_key
    end

    respond_to do |format|
      if @phdthesis.save
        format.html { redirect_to root_path, notice: 'Phdthesis was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /phdtheses/1
  # PATCH/PUT /phdtheses/1.json
  def update
    respond_to do |format|
      if @phdthesis.update(phdthesis_params)
        format.html { redirect_to root_path, notice: 'Phdthesis was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /phdtheses/1
  # DELETE /phdtheses/1.json
  def destroy
    @phdthesis.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Phdthesis was successfully destroyed.' }
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
