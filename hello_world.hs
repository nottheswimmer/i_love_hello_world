import System.Process
import System.IO

main = do
    putStrLn "Haskell: I love hello world"
    hFlush stdout
    callCommand ("perl hello_world.pl")
    putStrLn "Haskell: Boom-de-ah-da!"
