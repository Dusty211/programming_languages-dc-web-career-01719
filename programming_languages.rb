
require 'pry'

languages = {
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

def pry_funk(languages)
  prog_langs_array = []
  languages.each do |key, value|
    prog_langs_array << value.keys
    binding.pry
  end
  prog_langs_array.flatten.uniq
end

pry_funk(languages)

def reformat_languages(languages)
  # your code here
end
