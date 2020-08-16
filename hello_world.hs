import System.Process
import System.IO

main = do
    putStrLn "Haskell: I love hello world"
    hFlush stdout
    -- callCommand ("python .subprocess_test_file.py")
    putStrLn "Haskell: Boom-de-ah-da!"
