module AnsiColor
  (
    ansiDemo
  ) where

import System.Console.ANSI

import qualified Card as C

ansiDemo = do
    setCursorPosition 5 0
    setTitle "ANSI Terminal Short Example"

    setSGR [ SetConsoleIntensity BoldIntensity
           , SetColor Foreground Vivid Red
           , SetColor Background Dull Black
           ]
    putStr ("Hello " ++ C.blackSpade ++ C.whiteSpade)

    setSGR [ SetConsoleIntensity NormalIntensity
           , SetColor Foreground Vivid Red
           , SetColor Background Vivid White
           ]
    putStrLn (" World!" ++ C.blackSpade ++ C.whiteSpade)
