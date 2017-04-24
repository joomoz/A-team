class Reference < ActiveRecord::Base
  validates :key, presence: true

  def to_s
    "@#{entry_type}{#{key},
      author = {#{author}},
      title = {#{title}},
      journal = {#{journal}},
      volume = {#{volume}},
      number = {#{number}},
      month = {#{month}},
      year = {#{year}},
      pages = {#{pages}},
      publisher = {#{publisher}},
      editor = {#{editor}},
      booktitle = {#{booktitle}},
      organization = {#{organization}},
      address = {#{address}},
      note = {#{note}},
      edition = {#{edition}},
      series = {#{series}},
      annote = {#{annote}},
      chapter = {#{chapter}},
      crossref = {#{crossref}},
      howpublished = {#{howpublished}},
      institution = {#{institution}},
      school = {#{school}},
      type = {#{type}},
}
"


end
  end
