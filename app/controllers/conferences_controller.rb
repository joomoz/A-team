class ConferencesController < ReferencesController

  def new
    @conference = Conference.new
  end

  def create
    @conference = Conference.new(conference_params)
    if @conference.key.blank?
        @conference.create_key
    end

    respond_to do |format|
      if @conference.save
        format.html { redirect_to root_path, notice: 'Conference was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def conference_params
      params.require(:conference).permit(:key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :annote, :chapter, :crossref, :howpublished, :institution, :school, :type)
    end
end
