-- Motifique o arquivo alunos.hs (disponı́vel no Moodle) de forma a adicionar
-- novas funções:

-- A: Crie uma função com a seguinte assinatura: aprovados :: [(Int, String,
-- Float)] -> [String], a qual recebe uma lista de alunos e retorna uma lista
-- com o nome dos alunos aprovados. Um aluno está aprovado se a sua média é
-- maior ou igual a 6. Utilize map e filter para resolver esta questão.

-- B: Crie uma função com a seguinte assinatura: aprovados2 :: [(Int, String,
-- Float)] -> [String], a qual recebe uma lista de alunos e retorna uma lista
-- com o nome dos alunos aprovados. Um aluno está aprovado se a sua média é
-- maior ou igual a 6. Não utilize map e filter para resolver esta questão.
-- Utilize o conceito de list comprehension.

-- C: Utilize (e modifique, se necessário) a função gerarPares vista em aula e
-- disponı́vel no arquivo alunos.hs para formar duplas de alunos. Note que um
-- aluno não pode fazer dupla consigo mesmo.

alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getNota :: (Int, String, Float) -> Float
getNota (a,b,c) = c

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)]
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

gerarParesAlunos :: [(Int, String, Float)] -> [(Int, String, Float)] -> [((Int, String, Float), (Int, String, Float))]
gerarParesAlunos l1 l2 = [(a,b) | a <- l1, b <- l2, a /= b]

aprovado :: (Int, String, Float) -> Bool
aprovado (_, _, n) = n >= 6

aprovados :: [(Int, String, Float)] -> [String]
aprovados l = map getNome (filter aprovado l)

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 l =  [getNome aluno | aluno <- l, getNota aluno >= 6]

main = do
    print (getPrimeiroAluno alunos)
    putStrLn "List of approved students using aprovados function:"
    print (aprovados alunos)
    putStrLn "List of approved students using aprovados2 function:"
    print (aprovados2 alunos)
    putStrLn "List of pairs of students:"
    print (gerarParesAlunos alunos alunos)