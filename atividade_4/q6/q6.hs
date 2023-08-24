{-
 Crie uma função que receba três inteiros x, y e z e retorne se havendo
 varetas com esses valores em comprimento pode-se construir um triângulo.
 Exemplo, com varetas de comprimento 4, 8 e 9 posso construir um triângulo,
 porém com varetas de comprimento 10, 5 e 4 não posso construir um triângulo
 Leia x, y e z do teclado. 
-}

canMakeTriangle :: Int -> Int -> Int -> Bool
canMakeTriangle a b c   | ((a + b) > c) && ((a + c) > b) && ((b + c) > a) = True
                        | otherwise = False

main = do
    putStrLn "Insira a medida do lado a:"
    aStr <- getLine
    let a = (read aStr :: Int)
    putStrLn "Insira a medida do lado b:"
    bStr <- getLine
    let b = (read bStr :: Int)
    putStrLn "Insira a medida do lado c:"
    cStr <- getLine
    let c = (read cStr :: Int)
    print (canMakeTriangle a b c)