{- Crie uma função que receba dois valores booleanos (x, y) retorne o resultado
 do “ou exclusivo” (XOR) sobre eles. A função apenas deve usar os
 operadores &&, || e not. Leia os valores x e y do teclado. -}

xor :: Bool -> Bool -> Bool
xor a b = (not a && b) || (a && not b)

main = do
    putStrLn "Insert either True or False:"
    aStr <- getLine
    let aBool = (read aStr :: Bool)
    putStrLn "Insert the other input:"
    bStr <- getLine
    let bBool = (read bStr :: Bool)
    print (xor aBool bBool)