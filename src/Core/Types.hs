module Core.Types where

-- Rust enum 느낌 + Haskell ADT

data Expr
    = Int Integer
    | Bool Bool
    | Add Expr Expr
    | Mul Expr Expr
    | If Expr Expr Expr
    | Lambda String Expr
    | Apply Expr Expr
    deriving (Show, Eq)
