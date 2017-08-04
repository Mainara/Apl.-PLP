main = do
    x   <- getLine
    let alcool = read x :: Double
    y <- getLine
    let gasolina = read y :: Double
    z  <- getLine
    let litros = read z :: Double
    
    if alcool >= gasolina *0.7
        then print (gasolina * litros)
           
        else
            print (litros * alcool)

