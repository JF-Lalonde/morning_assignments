class CSVManipulation

  attr_reader :incoming_text

  def initialize
    @file_name = File.open(ARGV[0], "r")
    @incoming_text = @file_name.read.chomp
    @file_name.close
  end

  def sanitize_string
    @sanitized_lyrics = @incoming_text.gsub(/[^0-9A-Za-z.\-]/, ' ')
  end

  def unique_words
    @sanitized_lyrics.split.uniq.size
  end

end
