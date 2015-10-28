require_relative '../models/address_book'

class MenuController
	attr_accessor :address_book

	def initialize
		@address_book = AddressBook.new
	end

	def main_menu

	 puts "Main Menu - #{@address_book.entries.count} entries"
     puts "1 - View all entries"
     puts "2 - Create an entry"
     puts "3 - Search for an entry"
     puts "4 - Import entries from a CSV"
     puts "5 - Exit"
     puts "6 - View Enry Number n"
     print "Enter your selection: "

     selection=gets.to_i

     puts "You picked #{selection}"

   system = system "clear"
   case selection
        when 1
             system
             view_all_entries
             main_menu
        when 2
             system
             create_entry
             main_menu
        when 3
             system
             search_entries
             main_menu
        when 4
             system
             read_csv
             main_menu
        when 5
             puts "Good-bye!"
             # #8
             exit(0)
        when 6
              system
              entry_by_n
              main_menu

        else
             system
             puts "Sorry, that is not a valid input"
             main_menu
       end
    end

      def view_all_entries
        @address_book.entries.each do |entry|
            system "clear"
            puts entry.to_s
            entry_submenu(entry)
            end
            
        system "clear"
        puts "End of Entries"
      end

      def create_entry

        system "clear"
        puts "New AddressBloc Entry"
        print "Name "
        name=gets.chomp
        print "Phone number: "
        phone = gets.chomp
        print "Email: "
        email = gets.chomp

        @address_book.add_entry(name, phone, email)

        system "clear"
        puts "New entry created"
      end
           

      def search_entries
      end

      def read_csv
      end

      def entry_submenu(entry)
       puts "n - next entry"
       puts "d - delete entry"
       puts "e - edit this entry"
       puts "m - return to main menu"

       selection=gets.chomp

       case selection 
       when "n"

       when "d"

       when "e"

       when "m"

       system "clear"
       
       main_menu

       else
       system "clear"
       puts "#{selection} is not a valid input"
       entries_submenu(entry)
       end

      end

      def entry_by_n
        puts "What entry number are you looking for? "
          num=gets.chomp.to_i

          if num < @address_book.entries.count
            puts @address_book.entries[num]
          else 
            puts "#{num} is not a valid imput. Please try again"
            entry_by_n
          end
          
            
            
          
      end
  end
