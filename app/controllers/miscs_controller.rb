class MiscsController < ApplicationController
  before_action :set_misc, only: [:show, :edit, :update, :destroy]

  # GET /miscs
  # GET /miscs.json
  def index
    @miscs = Misc.all
  end

  # GET /miscs/1
  # GET /miscs/1.json
  def show
  end

  # GET /miscs/new
  def new
    @misc = Misc.new
  end

  # GET /miscs/1/edit
  def edit
    @entry_type = "misc"
  end

  # POST /miscs
  # POST /miscs.json
  def create
    @misc = Misc.new(misc_params)

    respond_to do |format|
      if @misc.save
        format.html { redirect_to root_path, notice: 'Misc was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /miscs/1
  # PATCH/PUT /miscs/1.json
  def update
    respond_to do |format|
      if @misc.update(misc_params)
        format.html { redirect_to @misc, notice: 'Misc was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /miscs/1
  # DELETE /miscs/1.json
  def destroy
    @misc.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Misc was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misc
      @misc = Misc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def misc_params
      params.require(:misc).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
