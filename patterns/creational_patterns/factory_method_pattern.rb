# frozen_string_literal: true

# In the Factory Method Pattern, a method is responsible
# for creating objects of a specific type. It encapsulates
# the object creation logic and allows subclasses or different
# implementations to provide concrete instances of objects
# based on some conditions or parameters.

# In this case, the extract_contents method serves as the
# factory method. It takes a file path as input and determines
# the type of file based on its extension. Depending on the
# file type (.txt, .csv, .json), it delegates the object creation
# to the appropriate file reader class (Text, CSV, JSON) using the
# FileReaders module.

# By using the Factory Method pattern, the code achieves flexibility
# and extensibility, as new file types can be supported by simply
# adding new file reader classes without modifying the existing code.

module FileReaders
  class Text
  end
end

module FileReaders
  class CSV
  end
end

module FileReaders
  class JSON
  end
end

class FileService
  # This method (interface) is responsible for creating objects of a specific type
  def extract_contents(file_path)
    ext = File.extname(file_path)

    case ext
    when '.txt'
      FileReaders::Text.read(file_path)
    when '.csv'
      FileReaders::CSV.read(file_path)
    when '.json'
      FileReaders::JSON.read(file_path)
    else
      raise Errors::InvalidFileExtensionError
    end
  end
end
