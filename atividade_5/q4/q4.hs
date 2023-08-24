-- Crie uma função com assinatura diferencaMaiorMenor :: [Int] -> Int, a qual
-- recebe uma lista de Int e retorna a diferença entre o maior e o menor
-- elemento da lista. Retorne 0 caso a lista for vazia. Não utilize nenhuma
-- função pronta do Haskell para realizar esta tarefa.

readValues :: IO [Int]
readValues = fmap (map read . words) getLine

menor :: [Int] -> Int
menor [] = 0
menor [a] = a
menor (a:b:c) = if a < b then menor (a:c) else menor(b:c)

maior :: [Int] -> Int
maior [] = 0
maior [a] = a
maior (a:b:c) = if a > b then maior (a:c) else maior(b:c)

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor lista = maior lista - menor lista

main = do
    putStrLn "Type a list of Ints:"
    lista <- readValues
    putStrLn "The difference between the biggest and the smallest number of the list is:"
    print (diferencaMaiorMenor lista)