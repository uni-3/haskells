-- function
f x y = x*x + y*y --f(x,y)=x^2+y^2

-- 三項演算子
g a = if a == 1 then "1" else "?"

-- 関数の場合分け
-- パターンマッチ ガード case ofの順に使われることが多い
-- 階乗
-- パターンマッチ
fact 0 = 1 --基底部
fact n = n * fact (n-1) -- 再帰処理

-- ガード 関数の引数条件を列挙 階乗の別な書き方
facts n
  | n == 0 = 1
  | otherwise = n * facts (n - 1)

-- フィボナッチ数列
fib 0 = 0
fib 1 = 1
fib n = fib(n-2) + fib(n-1)

fibs n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fibs(n-2) + fibs(n-1)

-- case of
fibc n = case n of
  0 -> 0
  1 -> 1
  _ | n > 1 -> fibc(n-2) + fibc(n-1)


main = do

  -- x, yを入力すると関数の計算結果がでる
  do {
    print "put x: "; x <- readLn;
    print "put y: "; y <- readLn;
    putStr "f(x,y) = "; print $ f x y;
  }

  do {
    print $ g 0;
    print $ g 1
  }

  print "facts"
  print $ fact 4
  print $ facts 4

  print "fibs"
  print $ fib 4
  print $ fibs 4
  print $ fibc 4
    {-
  -}
