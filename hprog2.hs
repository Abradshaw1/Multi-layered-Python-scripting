import System.IO
import System.Environment (getArgs)
import Control.Monad

-- Function to invert pixel values
invertPixelValue :: Int -> Int
invertPixelValue pixel = 255 - pixel

-- Function to apply inversion to each element of the list
invertImage :: [Int] -> [Int]
invertImage = map invertPixelValue

-- Read integers from a file and process them
processFile :: FilePath -> IO [Int]
processFile filename = do
    contents <- readFile filename
    let numbers = map read . words $ contents
    return (invertImage numbers)

-- Main function
main :: IO ()
main = do
    args <- getArgs
    case args of
        [filename] -> do
            invertedImage <- processFile filename
            putStrLn $ unwords $ map show invertedImage
        _ -> putStrLn "Usage: hprog <filepath>"