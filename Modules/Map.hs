import qualified Data.Map as Map
import Data.Char

stringToDigits :: String -> [Int]
stringToDigits = map digitToInt . filter isDigit

phonebook' :: Map.Map String String
phonebook' = Map.fromList [("alice", "555-1234"), ("bob", "555-5678"), ("charlie", "555-9012")]

phonebook :: Map.Map String [Int]
phonebook = Map.map stringToDigits phonebook'
