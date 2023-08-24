{- Crie uma função que dados dois pontos no espaço 3D, (x1, y1, z1) e (x2, y2,
 z2), compute a distância entre eles. Leia as posições dos pontos do teclado. -}

readPoints :: IO [Float]
readPoints = fmap (map read.words) getLine
 
calcDistance :: [Float] -> [Float] -> Float
calcDistance (x:y:z:_) (a:b:c:_) = sqrt ((x - a)**2 + (y - b)**2 + (z - c)**2)

main = do
    putStrLn "Insert the coordinates for point A in a single line separated by spaces:"
    pointA <- readPoints
    putStrLn "Insert the coordinates for point B in a single line separated by spaces:"
    pointB <- readPoints
    putStrLn "The distance between point A and point B is:"
    print (calcDistance pointA pointB)