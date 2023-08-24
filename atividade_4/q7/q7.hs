{-
Crie uma função que compute o n-ésimo número de Fibonacci. Leia n do teclado.
-}

nthFibo :: Int -> Int
nthFibo 0 = 0
nthFibo 1 = 1
nthFibo n = nthFibo(n-1) + nthFibo (n-2)

main = do
    putStrLn "Insira a posicao da sequencia de Fibonacci cujo valor voce deseja saber:"
    nStr <- getLine
    let n = (read nStr :: Int)
    print ("O numero de ordinalidade " ++ nStr ++ " em Fibonacci eh:")
    print (nthFibo n)
