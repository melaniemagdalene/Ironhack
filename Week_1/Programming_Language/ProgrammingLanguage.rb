class ProgrammingLanguage #Defining class and attribute accessor
	attr_accessor :name, :age, :type
 	def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

def array_printer(array) #Printing the languages and calling each one
  array.each do |language|
    puts "Language: #{language.name} | Age: #{language.age} | Type System: #{language.type}"
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

array_printer(array_of_languages)

aged_languages = array_of_languages.map do |language|
	language.age += 1
	language
end

array_sort = array_of_languages.sort_by {|language| language.age}.reverse

puts "The programming languages aged one year are: "
array_printer(array_sort)