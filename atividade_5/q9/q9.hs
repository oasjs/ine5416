-- Crie uma função com assinatura mapear :: (t -> y) -> [t] -> [y], a qual
-- recebe uma função, uma lista e retorna uma lista. Esta função mapear fará o
-- mesmo que a função map, ou seja, aplicar a função recebida como parâmetro
-- sobre cada elemento da lista e retornar a lista resultante. Não utilize map
-- ou filter para esta tarefa.

mapear :: (t -> y) -> [t] -> [y]
mapear func []      = []
mapear func (a:b)   = func a : mapear func b

main = do
    putStr "mapear (+1) [1,2,3,4,5] = "
    print $ mapear (+1) [1,2,3,4,5]
    putStr "mapear (*2) [1,2,3,4,5] = "
    print $ mapear (*2) [1,2,3,4,5]