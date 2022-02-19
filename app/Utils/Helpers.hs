module Helpers where

hello :: String -> String
hello user = "Hi, " ++ user

simple_sum :: Int -> Int
simple_sum value = value + value

indicate :: String -> String
indicate address
  | address == "127.0.0.1" = "localhost"
  | null address = "empty IP-address"
  | otherwise = address

prepare_length_where :: Double -> Double
prepare_length_where line = line * coefficient
  where coefficient = 0.4959

prepare_length_let :: Double -> Double
prepare_length_let line =
  let coefficient = 12.4959
      correction = 0.0012
  in line * coefficient - correction

divide :: Double -> Double -> Double
divide arg1 arg2 = arg1 / arg2

total_sum :: Double -> Double -> Double -> Double
total_sum arg1 arg2 arg3 = arg1 + arg2 + arg3