# require modules 
require "yaml"

def load_library(path)
  #return the correct values
  #set 2 hashes with get_meaning, get_emoticon as keys, empty hashes
  emoticons ={"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do  |meaning, describe|
    eng,jan = describe
    emoticons["get_meaning"][jan] = meaning
    emoticons["get_emoticon"][eng] = jan
  end  
  emoticons
end



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end