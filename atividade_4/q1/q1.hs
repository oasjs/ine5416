{-
Crie uma função que receba dois números x e y e retorne x**y . Leia x e y do
teclado.
-}

pwr :: Float -> Float -> Float
pwr x y = x**y

main = do
    putStrLn "Type the value of x:"
    xString <- getLine
    putStrLn "Type the value of y:"
    yString <- getLine
    let x = (read xString :: Float)
    let y = (read yString :: Float)
    putStrLn "x ** y is:"
    print (pwr x y)