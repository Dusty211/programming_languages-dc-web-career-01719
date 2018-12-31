
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

def style(data_structure, language)
  return_array = []
  data_structure.each do |key, value|
    return_array << key if value.keys.any? {|key| key == language} 
  end
  return_array
end

def type(data_structure, language)
  return_string = ""
  data_structure.each do |key, value|
    value.each do |lang, lang_type|
      return_string = lang_type.values.join if lang == language
    end
  end
end
binding.pry

type(data_structure, :ruby)

def languages_array(data_structure)
  lang_array = []
  data_structure.each do |key, value|
    lang_array << value.keys
  end
  lang_array.flatten.uniq
end

def build_hash_root(data_structure)
  return_hash = {}
  languages_array(data_structure).each do |language|
    return_hash[language] = {:style => style(data_structure, language)}
  end
  return_hash
end

#puts build_hash_root(data_structure)

#binding.pry

#puts languages_array(data_structure)


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
