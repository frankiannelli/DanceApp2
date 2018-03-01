module AddDance
    module_function
    def add_dance(library_data)
        puts "What would you like to add?"
        new_dance = gets.chomp
        if library_data.include? new_dance
            puts "#{new_dance} already exists in the Dance list!"
            AddDance.add_dance(library_data)
        elsif 
            library_data.push(new_dance)
            puts "this is the new complete list of moves #{library_data.columnize :displaywidth => 50, :colsep => ' | '}"
        else
            puts "how'd this happen?".colorize(:red)
            AddDance.add_dance(library_data)
        end
    end
end

    