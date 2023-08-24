-- Crie uma função com assinatura inverte :: [t] -> [t], a qual recebe uma
-- lista como parâmetro e deve retornar a mesma invertida. Não utilize nenhuma
-- função pronta do Haskell para realizar esta tarefa.

inverte :: [t] -> [t]
inverte [] = []
inverte (a:b) = inverte b ++ [a]

main = do
    let list_ = [1,2,3,4,5]
    putStrLn "List:"
    print list_
    putStrLn "Inverted list:"
    print (inverte list_)