-- Ultima Vogal

vogal :: Char -> String
vogal input
    | input == 'a' || input == 'A' = "a"
    | input == 'e' || input == 'E' = "e"
    | input == 'i' || input == 'I' = "i"
    | input == 'o' || input == 'O' = "o"
    | input == 'u' || input == 'u' = "u"
    | otherwise = ""

main = do
    palavra1 <- getLine
    palavra2 <- getLine
    palavra3 <- getLine
    palavra4 <- getLine
    palavra5 <- getLine
    
    putStrLn (vogal(last(palavra1)) ++ vogal(last(palavra2)) ++ vogal(last(palavra3)) ++ vogal(last(palavra4)) ++ vogal(last(palavra5)))
