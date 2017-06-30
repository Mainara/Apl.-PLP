-- Convertendo Lista

diferenca :: ([Int], [Int]) -> IO()
diferenca ([], []) = putStrLn " "
diferenca (c:cs, x:xs) = do 
    print (c-x) 
    diferenca(cs, xs) 

main = do
    input <- getLine
    let l1 = (map read $ words input :: [Int])
    input2 <- getLine
    let l2 = (map read $ words input2 :: [Int])
    diferenca(l1, l2)
