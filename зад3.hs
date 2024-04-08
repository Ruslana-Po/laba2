import Control.Monad (replicateM)  
--Объявление функции (получает интовое число, возвращает интовое число)
reverseNumber :: Int -> Int
reverseNumber num = go 0 num

    where
-- если перевёрнутое число начинается с 0, возвращаем число без 0
    go reversedNum 0 = reversedNum 
    --переворачиваем число
    go reversedNum num' = go (reversedNum * 10 + num' `mod` 10) (num' `div` 10)  

main :: IO ()
main = do
putStrLn "Enter the number of numbers:"
-- ввод количества чисел
n <- readLn 
putStrLn $ "Enter " ++ show n ++ " numbers:"
--ввод чисел n раз
nums <- replicateM n readLn  
-- последовательный вывод перевёрнутых чисел
putStrLn $ unwords $ map (show . reverseNumber) nums 
