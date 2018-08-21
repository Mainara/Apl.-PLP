main = do
    name <- getLine
    
    if name == "moto"
        then print 5
        else if name == "carro"
            then print 10
            else
                print 30
