-- Crie uma função com assinatura primeiros :: Int -> [t] -> [t], a qual recebe
-- um número de elementos, uma lista, e retorna uma lista. Esta função deve
-- retornar uma lista com os n primeiros elementos informados no primeiro
-- parâmetro. Não utilize nenhuma função pronta to Haskell para esta tarefa.

primeiros :: Int -> [t] -> [t]
primeiros _ [] = []
primeiros 0 _ = []
primeiros n (a:b) = a : primeiros (n-1) b

main = do
    putStr "primeiros 3 [1,2,3,4,5] = "
    print $ primeiros 3 [1,2,3,4,5]