import Text.XHtml (base)
{- Crie uma função que receba 3 valores numéricos (a, b, c) e retorne o maior
 deles. Não utilize nenhuma forma de ordenação. Leia os valores a, b, c do
 teclado. -}

-- Comentario: Existe a funcao max, mas acho que o exercicio quer que voce
-- tente resolver sem ela

readValues :: IO [Float]
readValues = fmap (map read.words) getLine

customMax :: [Float] -> Float
customMax (a:b:c:_) | a >= b && a >= c = a
                    | b >= a && b >= c = b
                    | c >= a && c >= b = c

main = do
    putStrLn "Insert three numbers in the same line separated by spaces:"
    values <- readValues
    putStrLn "The maximum value of those three is:"
    print (customMax values)