class BookletsController < ApplicationController
  before_action :set_booklet, only: [:show, :edit, :update, :destroy]

  # GET /booklets
  # GET /booklets.json
  def index
    @booklets = Booklet.all
  end

  # GET /booklets/1
  # GET /booklets/1.json
  def show
  end

  # GET /booklets/new
  def new
    @booklet = Booklet.new
  end

  # GET /booklets/1/edit
  def edit
  end

  # POST /booklets
  # POST /booklets.json
  def create
    @booklet = Booklet.new(booklet_params)

    respond_to do |format|
      if @booklet.save
        format.html { redirect_to @booklet, notice: 'Booklet was successfully created.' }
        format.json { render :show, status: :created, location: @booklet }
      else
        format.html { render :new }
        format.json { render json: @booklet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booklets/1
  # PATCH/PUT /booklets/1.json
  def update
    respond_to do |format|
      if @booklet.update(booklet_params)
        format.html { redirect_to @booklet, notice: 'Booklet was successfully updated.' }
        format.json { render :show, status: :ok, location: @booklet }
      else
        format.html { render :edit }
        format.json { render json: @booklet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booklets/1
  # DELETE /booklets/1.json
  def destroy
    @booklet.destroy
    respond_to do |format|
      format.html { redirect_to booklets_url, notice: 'Booklet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booklet
      @booklet = Booklet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booklet_params
      params.require(:booklet).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
