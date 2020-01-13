class CLI
    attr_reader :history
    
    def start
        system('clear')
        puts "Welcome to the Number Fact Command Line Interface! We've got facts about numbers from 1 to 100!"
        puts "Please wait while we load up some facts."
        API.new.get_fact_arrays
        puts "All done."
        puts
        @history = []
        main_menu
    end

    def main_menu
        puts "Type 1 to learn a trivia fact about a selected number."
        puts "Type 2 to learn a math fact about a selected number."
        puts "Type 3 to see your fact history."
        puts "Type \'quit\' to quit the program."
        puts
        main_menu_input
    end

    def main_menu_input
        user_input = gets.strip
        puts

        if user_input == "1"
            trivia_submenu
        elsif user_input == "2"
            math_submenu
        elsif user_input == "3"
            display_history
        elsif user_input == "quit"
            quit
        else
            invalid_selection
            main_menu
        end 
    end

    def trivia_submenu
        puts "Please enter the number, between 1 and 100 inclusive, that you would like to learn a trivia fact about."
        puts "Or type \'quit\' to quit the program."
        puts
        trivia_submenu_input
    end

    def trivia_submenu_input
        user_input = gets.strip
        puts

        if user_input.to_i.between?(1, 100)
            number = Number.trivia[user_input.to_i - 1]
            puts number.text
            puts
            @history << number
            continue? 
        elsif user_input == "quit"
            quit
        else
            invalid_selection
            trivia_submenu
        end
    end

    def math_submenu
        puts "Please enter the number, between 1 and 100 inclusive, that you would like to learn a math fact about."
        puts "Or type \'quit\' to quit the program."
        puts
        math_submenu_input
    end

    def math_submenu_input
        user_input = gets.strip
        puts

        if user_input.to_i.between?(1, 100)
            number = Number.math[user_input.to_i - 1]
            puts number.text
            puts
            @history << number
            continue?
        elsif user_input == "quit"
            quit
        else
            invalid_selection
            math_submenu
        end
    end

    def display_history
        puts "Here's all the facts you seen so far:"
        puts
        @history.each do |number|
            puts number.text
        end
        puts
        continue?
    end

    def continue?
        puts "Would you like to continue hearing facts about numbers?"
        puts "Type 1 to return to the main menu."
        puts "Type 2 to return to the trivia submenu."
        puts "Type 3 to return to the math submenu."
        puts "Type 4 to see your fact history again."
        puts "Type \'quit\' to quit the program."
        puts

        user_input = gets.strip
        puts

        if user_input == "1"
            main_menu
        elsif user_input == "2"
            trivia_submenu
        elsif user_input == "3"
            math_submenu
        elsif user_input == "4"
            display_history
        elsif user_input == "quit"
            quit
        else
            invalid_selection
            continue?
        end 
    end

    def invalid_selection
        puts "It seems you've entered something this program wasn't built to handle."
        puts "Please try again."
    end

    def quit
        puts "Thank you for using this Number Fact Command Line Interface."
        puts "Goodbye!"
    end
end