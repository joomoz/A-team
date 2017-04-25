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
    @entry_type = "techreport"
  end

  # POST /techreports
  # POST /techreports.json
  def create
    @techreport = Techreport.new(techreport_params)
    if @techreport.key.blank?
        @techreport.create_key
    end

    respond_to do |format|
      if @techreport.save
        format.html { redirect_to root_path, notice: 'Techreport was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /techreports/1
  # PATCH/PUT /techreports/1.json
  def update
    respond_to do |format|
      if @techreport.update(techreport_params)
        format.html { redirect_to @techreport, notice: 'Techreport was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /techreports/1
  # DELETE /techreports/1.json
  def destroy
    @techreport.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Techreport was successfully destroyed.' }
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
