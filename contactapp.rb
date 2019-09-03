mark = {
 name: "Mark",
 phone: 61431175129,
 title: "Student at Coder Academy",
 location: "120 Spencer Street, Melbourne"
}
samaa = {
 name: "Samaa",
 phone: 61490336085,
 title: "Student at Coder Academy",
 location: "120 Spencer Street, Melbourne"
}
all_contacts = [mark, samaa]
puts "Welcome to your contacts app."
puts " "
puts "You can do several things in this app"
puts " "
puts "Please select one of the following options"
while true
 puts "Enter the number for the option you want to do"
 puts "1. View contacts"
 puts "2. Add contact"
 puts "3. Remove contact"
 puts "4. Exit"
 print "> "
 option = gets.strip.to_i
   if option == 1
     #view contacts
     puts "-----------------------------"
     all_contacts.each do |contact|
       puts "#{contact[:name]} +#{contact[:phone]}"
       puts contact[:title]
       puts contact[:location]
       puts "-----------------------------"
     end
   elsif option == 2
     #add contact
     puts "Please enter information in this order: name, phone number, title, location:"
     print "> "
     name_entry = gets.strip.capitalize
     print "> "
     phone_entry = gets.strip.to_i
     print "> "
     title_entry = gets.strip
     print "> "
     location_entry = gets.strip
     all_contacts.push({
       name: name_entry,
       phone: phone_entry,
       title: title_entry,
       location: location_entry
     })
   elsif option == 3
     #remove contact
     puts "What is the name of the contact you want to remove?"
     print "> "
     delete_name = gets.strip.capitalize
     if all_contacts.join(', ').include?(delete_name)
       all_contacts.each_with_index do |contact, index|
         if delete_name == contact[:name]
           puts "Are you sure you wish to delete the contact #{contact[:name]}? Y / N"
           the_option = gets.strip.downcase
           if the_option == "y"
             all_contacts.delete_at(index)
             puts "#{contact[:name]} has been deleted."
             break
           elsif the_option == "n"
             break
           else
             "Please enter either Y or N."
           end
         end
       end
     else
       puts "Cannot find the name in the current contacts."
     end
   elsif option == 4
     break
   else
     puts "Please enter a valid option"
   end
end