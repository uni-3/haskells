#!/usr/bin/env stack
-- stack runghc


n = 100 -- global

f x = x + 1
a = f 1

main = do
    print "hello"
    putStrLn "hello put"

    text <- readFile "text.txt"
    putStrLn text
    putStr "f(1)=1+1="
    print a
