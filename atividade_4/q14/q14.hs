{- Crie uma função que receba dois números x e y e determine se eles são 
coprimos. Dois números são ditos coprimos se o máximo divisor comum entre eles 
é 1. Leia x e y do teclado. -}


areCoprimes :: Int -> Int -> String
areCoprimes a b | gcd a b == 1 = show a ++ " and " ++ show b ++ " are coprimes!"
                | otherwise = show a ++ " and " ++ show b ++ " are not coprimes!"

main = do
    putStrLn "Insert the first value:"
    aStr <- getLine
    let a = (read aStr :: Int)
    putStrLn "Insert the second value:"
    bStr <- getLine
    let b = (read bStr :: Int)
    print (areCoprimes a b)