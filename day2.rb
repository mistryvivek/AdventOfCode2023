module Day2 
    def self.part1(games)
        total = 0
        games.each_line do |game|
            allocation = { "red" => 12, "green" => 13, "blue" => 14}
            remove_header = game.partition(":")
            game_no = remove_header[0][-1].to_i
            game_sets = remove_header[2]
            game_sets.split(";").each {
                |game_set| game_set.split(", ").each {
                    |turn| allocation[turn.split(" ")[1]] = allocation[turn.split(" ")[1]] - turn.split(" ")[0].to_i
                }
            }
            if allocation["red"] >= 0 && allocation["green"] >= 0 && allocation["blue"] >= 0 then
                total += game_no
            total
            end
        end
        return total
    end
end

test_input = File.read('Inputs/Day2/Test/Day2Part1Test.txt')
puts Day2.part1(test_input)

input = File.read('Inputs/Day2/Solutions/Day2Part1.txt')
puts Day2.part1(input)

