class Reference < ActiveRecord::Base

  def create_key
    key = self.author.partition(" ").first + self.year.to_s + self.title.partition(" ").first
    references = Reference.all
    abc = "abcdefghijklmnopqrstuvwxyz"
    abcIndex = 0
    while Reference.exists?(key: key)
        if abcIndex > 0 && abcIndex < abc.length
            key = key.chop
        end
        key = key + abc[abcIndex]
        if abcIndex < abc.length
            abcIndex = abcIndex + 1
        else
            abcIndex = 0
        end
    end
    self.key = key
  end

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
