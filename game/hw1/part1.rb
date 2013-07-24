
def palindrome?(string)
  string = string.downcase.gsub(/\W/, '')
  string == string.reverse
end
 
def count_words(string)
  Hash[
    string.downcase.scan(/\w+/).
    group_by{|s| s}.
    map{|kv| [kv[0], kv[1].size]}]
end