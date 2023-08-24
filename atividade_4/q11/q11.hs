import Text.XHtml (base)
{- Crie uma função que receba dois números x e y e retorne o máximo divisor
 comum (DICA: pesquise sobre o Algoritmo de Euclides). Leia x e y do teclado. -}

-- Haskell tem uma funcao gcd, mas nos implementaremos a nossa!

customGCD :: Int -> Int -> Int
customGCD 0 0 = 0 `div` 0
customGCD a 0 = a
customGCD 0 b = b
customGCD a b   | abs a `mod` abs b == 0 && (abs a >= abs b) = abs b
                | abs b `mod` abs a == 0 && (abs b >= abs a) = abs a
                | abs a > abs b = customGCD b (abs a `mod` abs b)
                | otherwise = customGCD a (abs b `mod` abs a)

main = do
    putStrLn "Insert the first number:"
    aStr <- getLine
    let a = (read aStr :: Int)
    putStrLn "Insert the second number:"
    bStr <- getLine
    let b = (read bStr :: Int)
    print("The GCD of " ++ aStr ++ " and " ++ bStr ++ " is:")
    print(customGCD a b)