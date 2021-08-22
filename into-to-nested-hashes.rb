# Introduction to Nested Hashes
# link: https://learning.flatironschool.com/courses/2661/pages/introduction-to-nested-hashes?module_item_id=202338

# Describe how nested hashes can store complex associations of data.
# Describe the structure of a nested hash.
# Give examples of real-world situations that can require nested hashes.
# Retrieve data from a nested hash.

# Because hashes can be nested within each other. A key in a hash can point to a value that is also a collection 
# of objects. i.e. an array or even another hash 
# referred to as a nultidimensional hash 

# Nested Hashes are a commone way to store and operate on complext associated data in programs like APIs 

# Lets say we have a hash called schools 
# with keys to denote the instructors and the students 
school = {
  instructors: ["Ian", "Johann", "Alex"],
  students: ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"]
} 

puts school[:instructors]
# => Ian Johann Alex

# Above, we have a hash in which the value of a key is an array 
# One of the most commone nested data structures you'll see when working with an API is an array of hashes 

# Nesting an Array within a Hash 
# Below we have a hash, school 
# The data is broken down into categories of :instructors, :students, and :classes 
school = {
  instructors: ["Ian", "Johann", "Alex"],
  students: ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"],
  classes: ["Software Engineering", "Data Science"]
} 

# Above each key points to an array of strings 

# The value of that key is an array of instructors 
# In order to access that array, we can use [] method we've been using 
instructors = school[:instructors]
puts instructors
# => Ian Johann Alex

# If we wanted to grab just the first name in the instructors array 
puts instructors[0]
#  => "Ian" 

# Alternatively, use more than one set of brackets to find our answer 
school[:instructors][0]
#  => "Ian" 
#--------------------------------------------------------------------------------------------

# Nesting a hash within a Hash 
# Imagine we're putting together information on TV show characters 
# An individual hash for each character might look like 
homer = {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]}
jon = {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]}
fred = {name: "Mr. Rogers", occupation: "Neighbor", hobbies: ["Making children feel loved and appreciated", "Singing songs"]} 

# While each hash is about a different character, they are al part of a larger collection 
# We could put them in an array, but that would not be easy to contain 

# It would make more sense to contain these hashes within another hash 
tv_show_characters = {
  "Homer Simpson" => {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]},
  "Jon Snow" => {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]},
  "Mr. Rogers" => {name: "Mr. Rogers", occupation: "Neighbor", hobbies: ["Making children feel loved and appreciated", "Singing songs"]}
} 

# Above we've used names as keys to make it more convenient to access our hashes even though this data is 
# already stored in the hashes themselves 

# With this hash, we can directluy look up a particular character's information just by using their name 
puts tv_show_characters["Homer Simpson"]
#=> {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]}

puts tv_show_characters["Jon Snow"][:occupation]
#=> "King in the North"

puts tv_show_characters["Mr. Rogers"][:hobbies][1]
#=> "Singing songs" 
