module Url where

import Data.Char
import Data.String.Utils

starts_with = \url prefix -> startswith prefix url

add_prefix :: String -> String
add_prefix url = if url `starts_with` prefix then url else prefix ++ url
                 where prefix = "http://"

encode_all_spaces = \url -> replace " " "%20" url

make_it_lower_case = \url -> map toLower url