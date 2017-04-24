class TechreportsController < ApplicationController
  before_action :set_techreport, only: [:show, :edit, :update, :destroy]

  # GET /techreports
  # GET /techreports.json
  def index
    @techreports = Techreport.all
  end

  # GET /techreports/1
  # GET /techreports/1.json
  def show
  end

  # GET /techreports/new
  def new
    @techreport = Techreport.new
  end

  # GET /techreports/1/edit
  def edit
  end

  # POST /techreports
  # POST /techreports.json
  def create
    @techreport = Techreport.new(techreport_params)

    respond_to do |format|
      if @techreport.save
        format.html { redirect_to @techreport, notice: 'Techreport was successfully created.' }
        format.json { render :show, status: :created, location: @techreport }
      else
        format.html { render :new }
        format.json { render json: @techreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techreports/1
  # PATCH/PUT /techreports/1.json
  def update
    respond_to do |format|
      if @techreport.update(techreport_params)
        format.html { redirect_to @techreport, notice: 'Techreport was successfully updated.' }
        format.json { render :show, status: :ok, location: @techreport }
      else
        format.html { render :edit }
        format.json { render json: @techreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techreports/1
  # DELETE /techreports/1.json
  def destroy
    @techreport.destroy
    respond_to do |format|
      format.html { redirect_to techreports_url, notice: 'Techreport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techreport
      @techreport = Techreport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techreport_params
      params.require(:techreport).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
