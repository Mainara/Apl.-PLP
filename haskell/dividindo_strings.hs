-- Dividindo Strings

saida :: ([String], [String]) -> String
saida ([], []) = []
saida (c:cs, x:xs) = c ++ " " ++ x ++ "\n" ++ saida(cs, xs) 

main = do
    input <- getLine
    let l1 = (words input)
    input2 <- getLine
    let l2 = (words input2)
    putStrLn (saida (l1, l2)) 
