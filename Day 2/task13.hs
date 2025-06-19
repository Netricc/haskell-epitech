import System.Environment (getArgs)
import System.Exit (exitWith, ExitCode(..))
import Text.Read (readMaybe)

main :: IO ()
main = do
    args <- getArgs
    case args of
        [aStr, op, bStr] -> do
            let maybeA = readMaybe aStr :: Maybe Int
            let maybeB = readMaybe bStr :: Maybe Int
            case (maybeA, maybeB) of
                (Just a, Just b) -> compute a op b
                _                -> exit84
        _ -> exit84

compute :: Int -> String -> Int -> IO ()
compute a op b
    | op == "+" = print (a + b)
    | op == "-" = print (a - b)
    | op == "*" = print (a * b)
    | op == "/" && b /= 0 = print (a `div` b)
    | op == "%" && b /= 0 = print (a `mod` b)
    | otherwise = exit84

exit84 :: IO ()
exit84 = exitWith (ExitFailure 84)

-- execution in the doop file
