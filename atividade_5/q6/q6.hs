-- Crie uma função com assinatura ocorrencias :: [Int] -> Int -> Int, a qual
-- recebe uma lista de Int e um Int e retorna o número de vezes em que o
-- elemento está presente na lista. Não utilize nenhuma função pronta do Haskell
-- para realizar esta tarefa.

readValues :: IO [Int]
readValues = fmap (map read . words) getLine

ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) n = (if a == n then 1 else 0) + ocorrencias b n

main = do
    putStrLn "Type a list of Ints:"
    lista <- readValues
    putStrLn "Type a number to search in the list:"
    n <- readLn :: IO Int
    putStrLn "The number of occurrences of the number in the list is:"
    print (ocorrencias lista n)