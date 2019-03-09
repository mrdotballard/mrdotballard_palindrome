require "mrdotballard_palindrome/version"

module MrdotballardPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if !processed_content
      return false
    else
        processed_content == processed_content.reverse
    end      
  end


  private

    # Returns content for palindrome testing.
    def processed_content
      result = self.to_s.scan(/[a-z\d]/i).join.downcase
      if result.empty?
        return false
      else
        return result
      end
    end
end


class String
  include MrdotballardPalindrome
end

class Integer
  include MrdotballardPalindrome
end
