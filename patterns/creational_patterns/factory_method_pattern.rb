# frozen_string_literal: true

# PROBLEM STATEMENT:
# Imagine that you’re creating a logistics management application.
# The first version of your app can only handle transportation by trucks,
# so the bulk of your code lives inside the Truck class.
# After a while, your app becomes pretty popular. Each day you receive
# dozens of requests from sea transportation companies to incorporate
# sea logistics into the app. Great news, right? But how about the code?
# At present, most of your code is coupled to the Truck class. Adding Ships
# into the app would require making changes to the entire codebase.
# Moreover, if later you decide to add another type of transportation to the app,
# you will probably need to make all of these changes again.
# As a result, you will end up with pretty nasty code, riddled with conditionals
# that switch the app’s behavior depending on the class of transportation objects.

# SOLUTION:
# The Factory Method pattern suggests that you replace direct object construction
# calls (ie. using the `new` operator) with calls to a special factory method.
# NOTE: the objects are still created via the `new` operator, but it’s being called
# from within the `factory method`. Objects returned by a factory method are often
# referred to as products.

# DEFINITION:
# In software engineering, the Factory Method pattern is a creational design pattern
# that uses factory methods to deal with the problem of creating objects without
# specifying the exact class of the object that will be created.

# EXAMPLES:
#
# APPROACH 1: In this approach, a `file` factory method is responsible
# for creating objects of a specific type (objects/products - text reader, JSON reader or CSV reader).
# It encapsulates the object creation logic and allows subclasses or different
# implementations to provide concrete instances of objects
# based on some conditions or parameters (in this case, `file extension`).
module FileReaders
  class Text
    def read(file_path)
      # Implementation of reading a text file
    end
  end
end

module FileReaders
  class CSV
    def read(file_path)
      # Implementation of reading a CSV file
    end
  end
end

module FileReaders
  class JSON
    def read(file_path)
      # Implementation of reading a JSON file
    end
  end
end

class FileService
  # This factory method (interface) is responsible for creating objects of a specific type
  def file(file_path)
    ext = File.extname(file_path)

    case ext
    when '.txt'
      FileReaders::Text.new
    when '.csv'
      FileReaders::CSV.new
    when '.json'
      FileReaders::JSON.new
    else
      raise NotImplementedError, "#{self.class} has not implemented a reader for the extension '#{ext}'."
    end
  end
end

# Client code 1:
def extract_contents(file_path)
  puts "#{FileService.new.file(file_path).class} is reading the file '#{file_path}'"
end

# APPROACH 2: In this approach, the client code calls the base interface with the
# file reader's subclass and the `file path` as arguments.
class FileReader
  def read(file_path)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'."
  end
end

class TextReader < FileReader
  def read(file_path)
    puts "TextReader is reading the file '#{file_path}'"
  end
end

class CSVReader < FileReader
  def read(file_path)
    puts "CSVReader is reading the file '#{file_path}'"
  end
end

class JSONReader < FileReader
  def read(file_path)
    puts "JSONReader is reading the file '#{file_path}'"
  end
end

# Client code 2:
def read(file_reader, file_path)
  print "Client: I'm not aware of the file_reader's class, but I can read the file.\n"

  file_reader.read(file_path)
end

# By using the Factory Method pattern, the code achieves flexibility
# and extensibility, as new file types can be supported by simply
# adding new file reader classes without modifying the existing code.

text_file_path = 'test.txt'
csv_file_path = 'test.csv'
json_file_path = 'test.json'
dat_file_path = 'test.dat'

puts '======== Calling client 1: extract_contents(file_path)'
extract_contents(text_file_path)
extract_contents(csv_file_path)
extract_contents(json_file_path)

puts '======== Calling client 2: read(file_reader, file_path)'
read(TextReader.new, text_file_path)
read(CSVReader.new, csv_file_path)
read(JSONReader.new, json_file_path)

puts '======== Calling client 1: read(file_reader, file_path) with an unsupported file extension'
extract_contents(dat_file_path)
