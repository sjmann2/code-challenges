# Create a method/function that will intake a set of brackets [ { ( as a string 
# and determine if the brackets are well-formed (match). Brackets can be nested.

#   bracket('{}')
#   // => true

#   bracket('{()}')
#   // => true

#   bracket('({[]}{[]})') 
#   // => true
  
#   bracket('{(')
#   // => false
  
#   bracket('{[)][]}')
#   // => false
  
#   bracket(']')
#   // => false

# set definition for each brackets 'pair' as a hash PAIRS = "{" => "}"
# split the string in half, iterate through the first half of the string
# For each bracket, grab its pair, store pairs in separate string
# original halved string + separate string reversed should equal the original string
# edge cases--
  # open bracket must come first
  # {(}) => false

class BracketMatcher
  PAIRS = {
          ']' => '[',
          '}' => '{',
          ')' => '('
        }
        # '{(})'
  def match?(brackets)
    checker = []
    brackets.each_char.each do |bracket|
      if PAIRS[bracket] && checker[-1] == PAIRS[bracket]
        checker.pop
      else
        checker << bracket
      end
    end
    checker.empty?






    # first, second = brackets.each_char.each_slice(brackets.length / 2).map(&:join)
    # mirror = ''
    # first.each_char do |bracket|
    #   mirror += PAIRS.fetch(bracket)
    # end
    # mirrored = first + mirror.reverse
    # brackets == mirrored
  end
end

p BracketMatcher.new.match?('{}')
p BracketMatcher.new.match?('{()}')
p BracketMatcher.new.match?('({[]}{[]})')
p BracketMatcher.new.match?('{[)][]}')
p BracketMatcher.new.match?(']')
p BracketMatcher.new.match?('{(})')
p BracketMatcher.new.match?('{(')
p BracketMatcher.new.match?('()[]{}')

