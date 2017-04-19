class BibtexesController < ApplicationController
  before_action :set_bibtex, only: [:show, :edit, :update, :destroy]


  def new
    @bibtex = Bibtex.new
  end

  def create
    myfile = File.new("#{Rails.root}/public/"+ bibtex_params[:name] + ".bib", "w")
    Reference.all.each do |r|
      myfile.write r.to_s
    end
    myfile.close
    send_file(
        "#{Rails.root}/public/"+ bibtex_params[:name] + ".bib",
        :disposition => 'attachment',
        :x_sendfile=>true
    )
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibtex
      @bibtex = Bibtex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bibtex_params
      params.require(:bibtex).permit(:name)
    end
end
