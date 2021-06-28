module Main where

import System.Environment

import qualified Card

main :: IO ()
main = do
  value <- prompt "Enter a card number from 1 to 52 (CTRL-D to exit):"
  case Card.atIndex value of
    Just card -> putStrLn $ "Here's your card: " ++ show card
    Nothing -> putStrLn $ "Card number " ++ show value ++ " is out of range; please try again"
  main

prompt :: String -> IO Int 
prompt txt = do
  putStrLn txt
  readLn
  


