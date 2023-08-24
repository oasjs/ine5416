-- Crie uma função com assinatura apagar :: Int -> [t] -> [t], a qual recebe um
-- número de elementos, uma lista, e retorna uma lista. Esta função deve
-- remover da lista os n primeiros elementos fornecidos como parâmetro. Por
-- exemplo, a chamada (apagar 3 [1,2,3,4,5]) deve retornar [4,5]. Não utilize
-- nenhuma função pronta to Haskell para esta tarefa.

apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar 0 a = a
apagar n (a:b) = apagar (n-1) b

main = do
    putStr "apagar 3 [1,2,3,4,5] = "
    print (apagar 3 [1,2,3,4,5])