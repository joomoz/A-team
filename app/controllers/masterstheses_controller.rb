class MastersthesesController < ReferencesController

  def new
    @mastersthesis = Mastersthesis.new
  end

  def create
    @mastersthesis = Mastersthesis.new(mastersthesis_params)
    if @mastersthesis.key.blank?
        @mastersthesis.create_key
    end

    respond_to do |format|
      if @mastersthesis.save
        format.html { redirect_to root_path, notice: 'Mastersthesis was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def mastersthesis_params
      params.require(:mastersthesis).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
