-- Crie uma função com assinatura apagarEnquanto :: (t -> Bool) -> [t] -> [t],
-- a qual recebe uma função como parâmetro e uma lista, e retorna uma lista.
-- Esta função deve aplicar a função passada como parâmetro a cada elemento da
-- lista, até que algum elemento da lista retorne False na aplicação da função.
-- Os elementos da lista resultante são então todos os elementos a partir do
-- elemento em que a função passada como parâmetro retornou False. Por exemplo
-- a chamada (apagarEnquanto par [2,4,1,2,3,4,5]) deve retornar [1,2,3,4,5],
-- visto que ao testar o elemento 1, a função par retorna False. Não utilize
-- nenhuma função pronta to Haskell para esta tarefa.

apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto func [] = []
apagarEnquanto func (a:b) = if not (func a) then a:b else apagarEnquanto func b

main = do
    putStr "apagarEnquanto even [2,4,1,2,3,4,5] = "
    print (apagarEnquanto even [2,4,1,2,3,4,5])
    putStr "apagarEnquanto odd [1,1,3,4,5] = "
    print (apagarEnquanto odd [1,1,3,4,5])
    putStr "apagarEnquanto (<3) [1,2,3,4,5] = "
    print (apagarEnquanto (<3) [1,2,3,4,5])