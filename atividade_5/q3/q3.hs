-- Crie uma função com assinatura menor :: [Int] -> Int, a qual recebe uma lista
-- de Int e retorna o menor elemento da lista. Retorne 0 caso a lista for vazia.
-- Não utilize nenhuma função pronta do Haskell para realizar esta tarefa.

readValues :: IO [Int]
readValues = fmap (map read . words) getLine

menor :: [Int] -> Int
menor [] = 0
menor [a] = a
menor (a:b:c) = if a < b then menor (a:c) else menor(b:c)

main = do
    putStrLn "Type a list of Ints:"
    lista <- readValues
    putStrLn "The smallest number of the list is:"
    print (menor lista)