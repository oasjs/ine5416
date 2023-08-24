-- Crie uma função com assinatura filtrar :: (t -> Bool) -> [t] -> [t], a qual
-- recebe uma função, uma lista e retorna uma nova lista. Esta função aplica a
-- função recebida como parâmetro sobre cada elemento da lista e caso o retorno
-- da função for verdadeiro, então o elemento fará parte da nova lista, caso
-- contrário não. Para esta tarefa, utilize o conceito de list comprehension.

-- Versão usando recursão:
{-
 filtrar :: (t -> Bool) -> [t] -> [t]
 filtrar func [] = []
 filtrar func (a:b) = if func a then a : filtrar func b else filtrar func b
-}

-- Versão usando list comprehension:
filtrar :: (t -> Bool) -> [t] -> [t]
filtrar func l = [a | a <- l, func a]

main = do
    putStr "filtrar (>3) [1,2,3,4,5] = "
    print $ filtrar (>3) [1,2,3,4,5]