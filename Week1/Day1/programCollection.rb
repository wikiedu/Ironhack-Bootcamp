class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

 def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end


 def array_aged(array)
	array.map do |language|
		language.age=language.age + 1
		language
end

end

 def array_sort(array)
 	array_sorted=array.sort{|a,b| b.age <=> a.age}
end

def delete_array(array)
	array.delete_if{|item| item.name=='Java'}
end

def shuffle_array(array)
	array.shuffle
end


aged_array=array_aged(array_of_languages)
sorted_array=array_sort(array_of_languages)
java_deleted=delete_array(array_of_languages)
shuffled_array=shuffle_array(sorted_array)
array_printer(shuffled_array)
