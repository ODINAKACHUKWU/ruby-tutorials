def pluralize(count, message)
    if message.include? "s"
        print "#{message} has an s"
    elsif count > 1
        print message + "s"
    elsif
        print message
    end
end

# puts pluralize(20, "book")

print "Which word do you want to pluralize? "
word = gets.chomp
puts pluralize(2, word)
