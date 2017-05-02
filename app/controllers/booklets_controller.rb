class BookletsController < ReferencesController

  def new
    @booklet = Booklet.new
  end

  def create
    @booklet = Booklet.new(booklet_params)
    if @booklet.key.blank?
        @booklet.create_key
    end
    respond_to do |format|
      if @booklet.save
        format.html { redirect_to root_path, notice: 'Booklet was successfully created.' }
        else
        format.html { render :new }end
    end
  end

  private

    def booklet_params
      params.require(:booklet).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
