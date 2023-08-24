{- Crie uma função que receba a base e a altura de um triângulo e calcule a 
área do mesmo. Leia a base e a altura do teclado. -}

triArea :: Float -> Float -> Float
triArea b h = b * h / 2

main = do
    putStrLn "Type the value of the base:"
    baseStr <- getLine
    let base = (read baseStr::Float)
    putStrLn "Type the value the height:"
    heightStr <- getLine
    let height = (read heightStr::Float)
    putStrLn "The area of the triangle is:"
    print (triArea base height)