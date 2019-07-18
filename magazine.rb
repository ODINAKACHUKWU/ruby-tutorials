=begin
This is OOP inheritance tutorial. "attr_writer" is a setter method;
"attr_reader" is a getter method while "attr_accessor" is composed of both methods
=end

class Publication
    attr_accessor :publisher
    attr_writer :author
    attr_reader :author
end

class Magazine < Publication
    attr_accessor :editor
end

mag = Magazine.new
mag.publisher = "Solomon Ezeobika"
mag.editor = "Ibidapo Rasheed"
mag.author = "Ben Bruce"
puts "Mag is authored by #{mag.author}; published by #{mag.publisher} and edited by #{mag.editor}."

# instance of Ezine has both publisher and editor attributes
class Ezine < Magazine
end
