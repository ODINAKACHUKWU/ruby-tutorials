# This app enables a user lookup the area code of a city
dial_book = {
    "lagos" => "405",
    "port-harcourt" => "925",
    "onitsha" => "935",
    "uyo" => "367",
    "awka" => "356",
    "abeokuta" => "123",
    "ota" => "735",
    "abuja" => "762",
    "aba" => "543",
    "enugu" => "122"
}

def get_city_names(somehash)
    return somehash.keys
end

def get_area_code(somehash, key)
    return somehash[key]
end

loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N) "
    input = gets.chomp.downcase
    break if input != "y"
    puts "Which city do you want to lookup the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection "
    city = gets.chomp.downcase
    if dial_book.include?(city)
        puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
    else
        puts "You entered an invalid city name"
    end
end
