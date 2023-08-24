{-
 Crie uma função que receba três notas de um aluno (a, b, c), calcule a média
 e retorne se o aluno foi aprovado ou reprovado. Para um aluno ser aprovado,
 ele deve possuir nota igual ou superior a 6. Leia as notas dos alunos do
 teclado.
 -}

rslt :: Float -> String
rslt a | a >= 6 = "Aprovado!"
        | otherwise = "Reprovado!"

avrg :: [Float] -> Float
avrg grades = sum grades / fromIntegral (length grades)

readGrades :: IO [Float]
readGrades = fmap (map read.words) getLine

main = do
    putStrLn "Insira as nota do aluno:"
    grades <- readGrades
    putStrLn "O resultado do aluno é:"
    print (rslt (avrg grades))