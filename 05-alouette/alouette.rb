require 'pry'
class Alouette

  def self.lines_for_verse(verse_num)
    verse_modifier = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
    lines = []
    count = verse_num
    while count != -1
    line = "Et #{verse_modifier[count]}!"
    lines << line
    count -= 1
    end
    return lines
  end

  def self.verse(verse_num)
  verse_modifier = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
    count = verse_num
    verse = String.new
    verse += "Je te plumerai #{verse_modifier[count]}.\nJe te plumerai #{verse_modifier[count]}."
    while count != -1
    verse += "\nEt #{verse_modifier[count]}!"
    verse += "\nEt #{verse_modifier[count]}!"
    count -= 1
    end
    verse += "\nAlouette!\nAlouette!\nA-a-a-ah"
  return verse
  end
#
# `Alouette#sing` will build the entire song, formatted as in [`alouette_lyrics.txt`](alouette_lyrics.txt). There should be a blank line between verses and refrains. The value returned should return a string.

  def self.sing()
    verse_modifier = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
      count = 0
      song = String.new
      # fence post refrain
      song += "Alouette, gentille alouette,\nAlouette, je te plumerai.\n"
      # verse
      modifier_count = 0
      while count != 8
      song += "\nJe te plumerai #{verse_modifier[count]}.\nJe te plumerai #{verse_modifier[count]}.\nEt #{verse_modifier[count]}!\nEt #{verse_modifier[count]}!"
      if count > 0
        modifier_count = count
        while modifier_count != 0
          modifier_count -=1
          song += "\nEt #{verse_modifier[modifier_count]}!\nEt #{verse_modifier[modifier_count]}!"
        end
      end
      song += "\nAlouette!\nAlouette!\nA-a-a-ah"
      song += "\n\nAlouette, gentille alouette,\nAlouette, je te plumerai.\n"
      count += 1
      end
    return song
  end
end
