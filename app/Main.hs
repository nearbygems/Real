module Main where

import Helpers
import User
import Url
import Lists


main :: IO ()
--main = putStrLn (hello "Bergen")
--main = putStrLn (show (simple_sum 4))
--main = print (take 2 (repeat "127.0.0.1"))
--main = putStrLn (indicate "")
--main = print (f 5 6) where f = \x y -> x * y
--main = let temporary_function = divide 10.03 in print (temporary_function 2.1)
--main = let user_id = 1234
--           info_with_login = store_login_in user_info user_id
--           info_with_password = store_password_in info_with_login user_id
--           info_with_avatar_URL = store_avatar_URL_in info_with_password user_id
--           full_info_about_user = info_with_avatar_URL user_id
--       in  putStrLn full_info_about_user
--main = let user_id = 1234 in putStrLn ((obtain_login user_id) "My login")
--main = putStrLn . add_prefix . encode_all_spaces . make_it_lower_case $ url where url = "www.SITE.com/test me/Start page"
--main = print $ list_of_names "Dear "
--main = print $ length list_of_animals where list_of_animals = ["Bear", "Tiger", "Lion", "Wolf"]
--main = print $ if this_is_a_wild_animal "Cat" then "Yes!" else "No!"