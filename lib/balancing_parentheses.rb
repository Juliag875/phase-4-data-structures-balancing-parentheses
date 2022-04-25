require_relative './stack'

def balancing_parentheses(str)
  # create instance of Stack class
  stack = Stack.new 
  # checks the string to determine whether the parentheses inside it are balanced
  str.chars.each do |c|
    if stack.peek == '(' && c == ')'
      stack.pop
    else
      stack.push(c)
    end
  end
  stack.size
end


# Balanced: (), (()())
# Not balanced: ())(), )