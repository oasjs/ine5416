{- Crie uma função que receba dois números x e y e retorne se x é divisı́vel
 por y. Leia x e y do teclado. -}

readValues :: IO [Int]
readValues = fmap (map read.words) getLine

isDivisible :: Int -> Int -> Bool
isDivisible x y | x `mod` y == 0 = True
                | otherwise = False

main = do
    putStrLn "Insert X and Y to check if X is divisible by Y:"
    values <- readValues
    let x = head values
    let y = values !! 1
    if isDivisible x y then
        putStrLn "X is divisible by Y!"
    else
        putStrLn "X is not divisible by Y!"