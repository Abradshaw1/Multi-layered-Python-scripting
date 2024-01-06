import System.Environment

subtractBy1 :: [Int] -> [Int]
subtractBy1 [] = []
subtractBy1 (x:xs) = (x - 1) : subtractBy1 xs

main :: IO ()
main = do
    -- Start from 255 and generate a list to be decremented
    let startingNumber = 255
        numbers = take 5 [startingNumber, startingNumber-1 ..] -- Generate a list starting from 255
        result = subtractBy1 numbers
        resultStrings = map show result
        outputString = unwords resultStrings
    putStrLn outputString

