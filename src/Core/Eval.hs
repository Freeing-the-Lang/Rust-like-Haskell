module Core.Eval where

import Core.Types

-- Rust-like pattern + Haskell purity

eval :: Expr -> Expr
eval (Int n) = Int n
eval (Bool b) = Bool b

eval (Add a b) =
    let Int x = eval a
        Int y = eval b
    in Int (x + y)

eval (Mul a b) =
    let Int x = eval a
        Int y = eval b
    in Int (x * y)

eval (If cond t f) =
    let Bool c = eval cond
    in if c then eval t else eval f

-- λ calculus (Haskell style)
eval (Lambda arg body) = Lambda arg body
eval (Apply (Lambda arg body) val) =
    eval (subst arg val body)
eval x = x

-- substituting value into expression (very simplified)
subst :: String -> Expr -> Expr -> Expr
subst name val (Int n) = Int n
subst name val (Bool b) = Bool b

subst name val (Add a b) = Add (subst name val a) (subst name val b)
subst name val (Mul a b) = Mul (subst name val a) (subst name val b)

subst name val (If c t f) =
    If (subst name val c)
       (subst name val t)
       (subst name val f)

subst name val (Lambda arg body)
    | arg == name = Lambda arg body
    | otherwise   = Lambda arg (subst name val body)

subst name val (Apply f x) = Apply (subst name val f) (subst name val x)
