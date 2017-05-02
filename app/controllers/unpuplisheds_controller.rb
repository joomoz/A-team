class UnpuplishedsController < ReferencesController
  def new
    @unpuplished = Unpuplished.new
  end

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

  private

  def unpuplished_params
      params.require(:unpuplished).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
