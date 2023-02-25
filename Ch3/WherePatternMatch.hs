getInitials :: String -> String -> String

getInitials firstName lastName = [firstInitial] ++ "." ++ [lastInitial] ++ "." 
 where 
  (firstInitial:_) = firstName
  (lastInitial:_) = lastName

getInitials' (firstInitial:_) (lastInitial:_) = [firstInitial] ++ "." ++ [lastInitial] ++ "."
