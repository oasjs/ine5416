{- Crie uma função que receba três números x, y e z e retorne o máximo divisor
 comum (DICA: apenas modifique o algoritmo anterior). Leia x, y e z do teclado.
-}

readValues :: IO [Int]
readValues = fmap (map read.words) getLine

customGCD :: Int -> Int -> Int
customGCD 0 0 = 0 `div` 0
customGCD a 0 = a
customGCD 0 b = b
customGCD a b   | abs a `mod` abs b == 0 && (abs a >= abs b) = abs b
                | abs b `mod` abs a == 0 && (abs b >= abs a) = abs a
                | abs a > abs b = customGCD b (abs a `mod` abs b)
                | otherwise = customGCD a (abs b `mod` abs a)

main = do
    putStrLn "Insert the three numbers in a single line separated by spaces:"
    values <- readValues
    let a = customGCD (head values) (values !! 1)
    print ("The GCD of the given numbers is: " ++
            show (customGCD a (values !! 2)))