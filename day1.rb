module Day1
    NUMBERS = "/one|two|three|four|five|six|seven|eight|nine|1|2|3|4|5|6|7|8|9/"

    def self.part1(text)
        total = 0
        text.each_line do |line|
            num = line.scan(/\d/).join('')[0] + line.scan(/\d/).join('')[-1] 
            total += num.to_i
        end
        return total
    end

    def self.part2(text)
        total = 0
        text.each_line do |line|
            all_numbers = line.scan(NUMBERS)
            puts all_numbers
            total += all_numbers[0].to_i + all_numbers[-1].to_i
        end
        total
    end
end

test_input = File.read('Inputs/Day1/Test/Day1Part1Test.txt')
input = File.read('Inputs/Day1/Solutions/Day1Part1.txt')
Day1.part1(test_input)
Day1.part1(input)

test_input_2 = File.read('Inputs/Day1/Test/Day1Part2Test.txt')
Day1.part2(test_input_2)