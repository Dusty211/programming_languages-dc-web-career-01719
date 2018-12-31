
require 'pry'

data_structure = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def languages_array(data_structure)
  lang_array = []
  data_structure.each do |key, value|
    lang_array << value.keys
  end
  lang_array.flatten.uniq
end

binding.pry

puts languages_array(data_structure)

=begin
def pry_funk(languages)
  prog_langs_array = []
  languages.each do |key, value|
    prog_langs_array << value.keys
  end
  prog_langs_array.flatten.uniq
end

puts pry_funk(languages)

def reformat_languages(languages)
  # your code here
end
=end
