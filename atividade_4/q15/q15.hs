{- Crie uma função que receba um número n e retorne a função totiente de Euler
 (φ(n)). A função totiente de Euler é dada pelo número de inteiros positivos r
 a partir de 1 e menores que n, ou seja 1 <= r < n, que são coprimos de n. Por
 exemplo, se n = 10, então os coprimos de 10 de 1 até 10-1 são {1, 3, 7, 9} e a
 função deve retornar φ(n) = 4. Leia n do teclado. -}

areCoprimes :: Int -> Int -> Bool
areCoprimes a b | gcd a b == 1 = True
                | otherwise = False

eulerTotient :: Int -> Int
eulerTotient n = length $ filter (areCoprimes n) [1..n]

main = do
    putStrLn "Insert the number n to be avulated in the Euler's Totient:"
    n <- readLn
    print ("The number of coprimes of n is " ++ show (eulerTotient n))