-- Crie uma função com assinatura busca :: [Int] -> Int -> Bool, a qual recebe
-- uma lista de Int e um Int e retorna se o elemento passado como parâmetro
-- encontra-se na lista ou não. Não utilize nenhuma função pronta do Haskell
-- para realizar esta tarefa.

readValues :: IO [Int]
readValues = fmap (map read . words) getLine

busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a:b) n = (a == n) || busca b n

main = do
    putStrLn "Type a list of Ints:"
    lista <- readValues
    putStrLn "Type a number to search in the list:"
    n <- readLn :: IO Int
    putStrLn "The number is in the list:"
    print (busca lista n)