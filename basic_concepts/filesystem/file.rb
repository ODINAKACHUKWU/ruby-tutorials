# frozen_string_literal: true

# Lesson takeaways:

# -> Work with and manipulate filenames
# -> List directories
# -> Test files to determine their type, size, modification time, and other attributes
# -> Delete, rename, and perform similar operations on files and directories

# NOTE: These operations don't write or write file content

file_path = '/home/solomon/profile.rb'

# Get the local file name
file = File.basename(file_path)
p 'Local file name: ', file

# Get the local file name with extension stripped
p 'Local file name without extension: ', File.basename(file_path, '.rb')

# Get file's parent directory
p 'File parent directory: ', File.dirname(file_path)

# Split file path into directory and file name
p 'Split file path: ', File.split(file_path)

# Get the file extension
p 'File extension: ', File.extname(file_path)
p 'File extension: ', File.extname(file)

# Compose directory
p 'Relative path: ', File.join('home', 'solomon')
p 'Absolute path: ', File.join('', 'home', 'solomon')
p 'Absolute path: ', File.join('', 'home', 'solomon', 'profile.rb')

# Create full path 'ruby' in current working direct
p 'Full path: ', File.expand_path('ruby')

# Change working directory to create full path 'ruby'
Dir.chdir('/Users/odinakachukwuezeobika')
p 'Full path: ', File.expand_path('ruby')

# Create a path 'ruby' in Home
p '---------', File.expand_path('~/ruby')
p 'Or', File.expand_path('~odinakachukwuezeobika/ruby')

p File.expand_path('ruby', '/usr/local/bin')
p File.expand_path('ruby', '../local/bin')
p File.expand_path('ruby', '~/bin')

# Test for whether 2 filenames refer to the same file.
# -> Note: however, that File.identical? only returns true if the
#    two names refer to the same file and that file actually exists.
p 'Identical? ', File.identical?('ruby', '/usr/local/ruby')
