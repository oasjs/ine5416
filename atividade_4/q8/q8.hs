{- Crie uma função que resolva uma equação de segundo grau da forma ax2 + bx +
 c utilizando a fórmula de Bhaskara. Leia os coeficientes a, b e c do teclado.
-}

readCoefs :: IO [Float]
readCoefs = fmap (map read.words) getLine

findRoots :: [Float] -> [Float]
findRoots (a:b:c:_) =   [(-b + sqrt ((b**2) - (4*a*c))) / (2*a),
                        (-b - sqrt ((b**2) - (4*a*c))) / (2*a)]
findRoots [] = error "Empty list has no coeficients so could not find roots"

main = do
    putStrLn "Insert coeficients in a single line separated by spaces:"
    coefs <- readCoefs
    putStrLn "The roots of this equation are:"
    print (findRoots coefs)