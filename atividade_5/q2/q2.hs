-- Crie uma função com assinatura media :: [Int] -> Float, a qual recebe uma
-- lista de Int e retorna a média de todos os elementos da lista. Retorne 0
-- caso a lista for vazia. Não utilize nenhuma função pronta do Haskell para
-- realizar esta tarefa. DICA: utilize a função fromIntegral para converter um
-- tipo inteiro para um tipo compatı́vel com o operador de divisão /

readValues :: IO [Int]
readValues = fmap (map read . words) getLine

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

media :: [Int] -> Float
media (a:b) = fromIntegral (a + soma b) / fromIntegral (length b)

main = do
    putStrLn "Type a list of Ints:"
    lista <- readValues
    putStrLn "The average of the list is:"
    print (media lista)