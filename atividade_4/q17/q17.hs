{- Crie uma função que receba um número n e retorne se o mesmo é primo. Leia n
 do teclado. -}

isPrime :: Int -> Bool
isPrime n   | n <= 1 = False
            | n <= 3 = True
            | otherwise = notDivisible 2
        where
            notDivisible m  | m * m > n = True
                            | n `mod` m == 0 = False
                            | otherwise = notDivisible (m + 1)

main = do
    putStrLn "Type a number to check if it is prime:"
    n <- readLn
    if isPrime n then
        print (show n ++ " is prime!")
    else
        print (show n ++ " is not prime!")