# We have a nested data structure 
# Top tier is family names 
# Beneath that we have key characters 
# and beneath that their arrtibutes 
# We have an additional layer of the hero/herion's friends b/c there are multiple friends 
def first_challenge
 epic_tragedy = {
  :montague => {},
  :capulet => {}
} 
end


def first_challenge_whole_nested
  epic_tragedy = {
   # family name
  :montague => {
     # Character
    :patriarch => {
      :name => "Lord Montague", #attribute 
      :age => "53"#attribute
  },
   # Character 
    :matriarch => {
      :name => "Lady Montague", #attribute 
      :age => "54" #attribute
  },
    :hero => {
      :name => "Romeo",
      :age => "15"
  },
   #additonal layer of friends
    :hero_friends => [
      {
         :name => "Benvolio",
         :age => "17",
         :attitude => "worried"
      },
      {
        :name => "Mercutio",
        :age => "18",
        :attitude => "hot-headed"
      }
    ]
  },
  # Family name
  :capulet => {
    # Character
    :patriarch => {
      :name => "Lord Capulet", #attribute 
      :age => "50" #attribute 
    },
    # Character 
    :matriarch => {
      :name => "Lady Capulet", #attribute
      :age => "51" #attribute 
    },
    :heroine => {
      :name => "Juliet",
      :age => "15",
      :status => "alive"
    },
    # additonal layer of friends 
    :heroine_friends=> [
      {
        :name => "Steven",
        :age => "30",
        :attitude => "confused"
      },
      {
        :name => "Nurse",
        :age => "44",
        :attitude => "worried"
      }
    ]
  }
} 
end

#puts first_challenge_whole_nested
# prints out the nested hash 


