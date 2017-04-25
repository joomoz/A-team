class ReferencesController < ApplicationController
  before_action :set_reference, only: [:show, :edit, :update, :destroy]
  before_action :set_entry_types_for_template, only: [:new, :edit, :create]

  # GET /references
  # GET /references.json
  def index
    @references = Reference.all
  end

  # GET /references/1
  # GET /references/1.json
  def show
  end

  # GET /references/new
  def new
    @reference = Reference.new
  end

  # GET /references/new_article
  # def new_article
  #   @reference = Reference.new
  #   @entry_type = "article"
  # end

  # GET /references/1/edit
  def edit
  end

  # POST /references
  # POST /references.json
  def create
    @reference = Reference.new(reference_params)
    @reference.create_key

    respond_to do |format|
      if @reference.save
        format.html { redirect_to @reference, notice: 'Reference was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /references/1
  # PATCH/PUT /references/1.json
  def update
    respond_to do |format|
      if @reference.update(reference_params)
        format.html { redirect_to @reference, notice: 'Reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference }
      else
        format.html { render :edit }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /references/1
  # DELETE /references/1.json
  def destroy
    @reference.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def bibtex
    redirect_to "#{Rails.root}/app/views/references/download_bibtex.erb"
  end

  def download
    generate
    send_file(
        "#{Rails.root}/public/sigproc.bib",
        :disposition => 'attachment',
        :x_sendfile=>true
    )
  end

  def generate
    myfile = File.open("#{Rails.root}/public/sigproc.bib", "w")
    Reference.all.each do |r|
      myfile.write r.to_s
    end
    myfile.close
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:key, :entry_type, :author, :title, :journal,
      :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition,
      :booktitle, :editor, :organization, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end

    def set_entry_types_for_template
      @entry_type = ["article", "book", "inproceedings", ""]
    end

end
