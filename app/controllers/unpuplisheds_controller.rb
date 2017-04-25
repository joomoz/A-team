class UnpuplishedsController < ApplicationController
  before_action :set_unpuplished, only: [:show, :edit, :update, :destroy]

  # GET /unpuplisheds
  # GET /unpuplisheds.json
  def index
    @unpuplisheds = Unpuplished.all
  end

  # GET /unpuplisheds/1
  # GET /unpuplisheds/1.json
  def show
  end

  # GET /unpuplisheds/new
  def new
    @unpuplished = Unpuplished.new
  end

  # GET /unpuplisheds/1/edit
  def edit
    @entry_type = "unpublished"
  end

  # POST /unpuplisheds
  # POST /unpuplisheds.json
  def create
    @unpuplished = Unpuplished.new(unpuplished_params)
    if @unpuplished.key.blank?
        @unpuplished.create_key
    end

    respond_to do |format|
      if @unpuplished.save
        format.html { redirect_to root_path, notice: 'Unpuplished was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /unpuplisheds/1
  # PATCH/PUT /unpuplisheds/1.json
  def update
    respond_to do |format|
      if @unpuplished.update(unpuplished_params)
        format.html { redirect_to @unpuplished, notice: 'Unpuplished was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /unpuplisheds/1
  # DELETE /unpuplisheds/1.json
  def destroy
    @unpuplished.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Unpuplished was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpuplished
      @unpuplished = Unpuplished.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpuplished_params
      params.require(:unpuplished).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
