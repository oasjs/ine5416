-- Crie uma função com assinatura soma :: [Int] -> Int, a qual recebe uma list
-- de Int e retorna a soma de todos os elementos da lista. Retorne 0 caso a
-- lista for vazia. Não utilize nenhuma função pronta do Haskell para realizar
-- esta tarefa.

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
    let lista = [1, 2, 3, 4, 5, 6, 7]
    print (soma lista)