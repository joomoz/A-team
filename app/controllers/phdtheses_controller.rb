class PhdthesesController < ReferencesController

  def new
    @phdthesis = Phdthesis.new
  end

  def create
    @phdthesis = Phdthesis.new(phdthesis_params)
    if @phdthesis.key.blank?
        @phdthesis.create_key
    end

    respond_to do |format|
      if @phdthesis.save
        format.html { redirect_to root_path, notice: 'Phdthesis was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def phdthesis_params
      params.require(:phdthesis).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
