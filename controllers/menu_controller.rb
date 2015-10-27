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
        # #9
        else
             system
             puts "Sorry, that is not a valid input"
             main_menu
       end
    end

      def view_all_entries
      end

      def create_entry
      end

      def search_entries
      end

      def read_csv
      end
  end
