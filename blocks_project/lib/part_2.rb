def all_words_capitalized?(array)
    array.all? {|el| el == el.capitalize}
end

def no_valid_url?(urls)
    domains = [".com", ".net", ".io", ".org"]
    urls.none? do |el|
        domains.any? {|dom| el.end_with?(dom)} 
    end
end

def any_passing_students?(students)
    students.any? do |student| 
        true if (student[:grades].sum / student[:grades].size.to_f) >= 75
    end
end