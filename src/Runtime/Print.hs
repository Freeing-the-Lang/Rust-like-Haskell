module Runtime.Print where

import Core.Types

printValue :: Expr -> IO ()
printValue (Int n) = putStrLn ("Int " ++ show n)
printValue (Bool b) = putStrLn ("Bool " ++ show b)
printValue x = putStrLn ("Expr " ++ show x)
