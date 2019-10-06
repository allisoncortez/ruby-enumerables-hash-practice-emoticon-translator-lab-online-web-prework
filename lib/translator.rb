# require modules 
require "yaml"

def load_library(path)
  #return the correct values
  #set 2 hashes with get_meaning, get_emoticon as keys, empty hashes
  emoticons ={"get_meaning" => {}, "get_emoticon" => {}}
  
  #load YAML file with meaning(angel, angry,..) as key and symbol as value(describe)
  YAML.load_file(path).each do  |meaning, describe|
    
    #set eng, jan from describe, so eng would be the first value, jan the second
    eng,jan = describe
    emoticons["get_meaning"][jan] = meaning
    emoticons["get_emoticon"][eng] = jan
  end  
  emoticons
end


# accepts two arguments, the YAM file path and the emoticon
def get_japanese_emoticon(path,emoticon)
  #call load_library
  emoticons = load_library(path)
  
end






def get_english_meaning
  # code goes here
end