module Main where

import Core.Types
import Core.Eval
import Runtime.Print

-- Rust 느낌: Add, Mul, Int 구조체
-- Haskell 느낌: 패턴매칭 + 순수함수

main :: IO ()
main = do
    let expr = Add (Int 10) (Mul (Int 2) (Int 3))
    let result = eval expr
    printValue result
