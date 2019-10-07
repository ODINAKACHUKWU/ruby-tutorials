users = [
    { username: "solomon", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "frank", password: "password3" },
    { username: "bob", password: "password4" },
    { username: "justin", password: "password5" }
]

def auth_user(username, password, list_of_users)

   list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    
    "Invalid credentials"

end

puts "Welcome to the authenticator"
25.times { print "."}
puts
puts "This program will take input from the user and compare password."
puts "If password is correct, you will get back the user object."

attempts = 1

# This loop limits a user's login attempts to 3
while attempts < 4
    print "Username: "
    username =gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press q to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "q"
    attempts += 1
end

puts "Oops! You have exceeded the number of attempts" if attempts == 4
