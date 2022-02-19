module Lists where

list_of_names :: String -> [String]
list_of_names prefix = [prefix ++ "John", prefix ++ "Anna", prefix ++ "Andrew"]

wild_animals :: [String]
wild_animals = ["Bear", "Tiger", "Lion", "Wolf"]

this_is_a_wild_animal :: String -> Bool
this_is_a_wild_animal name = name `elem` wild_animals