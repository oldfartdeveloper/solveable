module Card where

--import qualified System.Console.ANSI

{-
  This describes the static behaviors of each of the
  52 cards in a deck.  Dynamic card information, such as
  what other card can be transferred to it to unblock it
  is in module Location (probably -- TODO)
-}

data Card = Card { suit :: Suit
  , rank :: Rank
  , color :: Color
  }
  
instance Show Card where
  show (Card {suit = suit, rank = rank, color = color } ) = do
    let
      showSuit =
        case suit of
          Club -> colorize blackClub whiteClub
          Diamond -> colorize blackDiamond whiteDiamond
          Heart -> colorize blackHeart whiteHeart
          Spade -> colorize blackSpade whiteSpade
          where
            colorize black white = if color == Black then black else white
      showRank =
        case rank of
          Ace -> " A"
          Two -> " 2"
          Three -> " 3"
          Four -> " 4"
          Five -> " 5"
          Six -> " 6"
          Seven -> " 7"
          Eight -> " 8"
          Nine -> " 9"
          Ten -> "10"
          Jack -> " J"
          Queen -> " Q"
          King -> " K"
    showRank ++ showSuit

data Rank -- from lowest to highest
  = Ace
  | Two
  | Three
  | Four
  | Five
  | Six
  | Seven
  | Eight
  | Nine
  | Ten
  | Jack
  | Queen
  | King
  deriving (Eq, Ord, Enum, Bounded, Show)
  
-- see https://en.wikipedia.org/wiki/High_card_by_suit
-- (but suit order isn't important in Solitaire):
data Suit
  = Club
  | Diamond
  | Heart
  | Spade
  deriving (Eq, Enum, Bounded, Show)
  
data Color
  = Black
  | Red
  deriving (Eq, Show)

deck :: [Card] -- Cards are zero-indexed
deck =
  [ Card { suit = suit
         , rank = rank
         , color = getColor suit
         }
    | suit <- [minBound .. maxBound]
    , rank <- [minBound .. maxBound]
  ]
    where
      getColor Club = Black 
      getColor Spade = Black
      getColor _ = Red

oppositeColor :: Color -> Color
oppositeColor Black = Red
oppositeColor _ = Black

-- Suit Descriptions (Unicode)

blackClub :: String
blackClub = "\9827"

whiteClub :: String
whiteClub = "\9831"

blackDiamond :: String
blackDiamond = "\11045"

whiteDiamond :: String
whiteDiamond = "\11046"

blackHeart :: String
blackHeart = "\9829"

whiteHeart :: String
whiteHeart = "\9825"

blackSpade :: String
blackSpade = "\9824"

whiteSpade :: String
whiteSpade = "\9828"
