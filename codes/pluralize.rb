# frozen_string_literal: true

def pluralize(count, message)
  if message.include? 's'
    print "#{message} has an s"
  elsif count > 1
    print "#{message}s"
  end
end

# puts pluralize(20, "book")

print 'Which word do you want to pluralize? '
word = gets.chomp
puts pluralize(2, word)
