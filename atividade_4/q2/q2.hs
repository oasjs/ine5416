{- Crie uma função que receba um número x, negativo ou positivo, e retorne seu
 valor absoluto. Leia x do teclado. -}

abslt :: Float -> Float
abslt x | x < 0 = -x
        | x == 0 = 0
        | otherwise = x

main = do
    putStrLn "Type the value of x to get its absolute value:"
    xString <- getLine
    let x = (read xString :: Float)
    putStrLn "The absolute value of x is:"
    print (abs x)
    print (abslt x)