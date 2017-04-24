class MastersthesesController < ApplicationController
  before_action :set_mastersthesis, only: [:show, :edit, :update, :destroy]

  # GET /masterstheses
  # GET /masterstheses.json
  def index
    @masterstheses = Mastersthesis.all
  end

  # GET /masterstheses/1
  # GET /masterstheses/1.json
  def show
  end

  # GET /masterstheses/new
  def new
    @mastersthesis = Mastersthesis.new
  end

  # GET /masterstheses/1/edit
  def edit
  end

  # POST /masterstheses
  # POST /masterstheses.json
  def create
    @mastersthesis = Mastersthesis.new(mastersthesis_params)

    respond_to do |format|
      if @mastersthesis.save
        format.html { redirect_to @mastersthesis, notice: 'Mastersthesis was successfully created.' }
        format.json { render :show, status: :created, location: @mastersthesis }
      else
        format.html { render :new }
        format.json { render json: @mastersthesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masterstheses/1
  # PATCH/PUT /masterstheses/1.json
  def update
    respond_to do |format|
      if @mastersthesis.update(mastersthesis_params)
        format.html { redirect_to @mastersthesis, notice: 'Mastersthesis was successfully updated.' }
        format.json { render :show, status: :ok, location: @mastersthesis }
      else
        format.html { render :edit }
        format.json { render json: @mastersthesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masterstheses/1
  # DELETE /masterstheses/1.json
  def destroy
    @mastersthesis.destroy
    respond_to do |format|
      format.html { redirect_to masterstheses_url, notice: 'Mastersthesis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mastersthesis
      @mastersthesis = Mastersthesis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mastersthesis_params
      params.require(:mastersthesis).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
