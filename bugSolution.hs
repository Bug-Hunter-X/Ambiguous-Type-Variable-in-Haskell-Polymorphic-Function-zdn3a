The solution is to provide a type annotation for `result` in `main`:

```haskell
myFunction :: a -> a
myFunction x = x

main :: IO ()
main = do
  let result :: Int = myFunction 5 -- Type annotation added here
  print result
```

By specifying `result :: Int`, we explicitly tell the compiler that `a` should be `Int` in this particular instance, resolving the type ambiguity.