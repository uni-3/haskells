import Data.Char

-- rot13 変換処理
rot13ch ch
  |  'A' <= ch && ch <='M'
  || 'a' <= ch && ch <='m' = chr & ord ch + 13
  |  'N' <= ch && ch <='Z'
  || 'n' <= ch && ch <='z' = chr $ ord ch - 13
  |  otherwise = ch

-- 1文字ずつ、rot13chで処理した値を入れる
rot13 "" = ""
rot13 (x:xs) = rot13ch x : rot13 xs --xsから1つずつ取り出して、xに入れる？

-- sort
-- xに対して、残りのxs(ys)分、比較していく
-- xの方が小さければ、xを先頭に、その他をy,ysの順に入れる
-- xがy以上ならばyを先頭にして、 xと残りの配列ysでまた、並び替え(incert)を行う
insert x [] = [x]
insert x (y:ys) -- ysからyに１文字ずつ入れる
    | x < y = x:y:ys
    | otherwise = y : insert x ys

isort [] = []
isort (x:xs) = insert x (isort xs)

main = do
  print "using Data.char A=>byte, 65=>char"
  print $ ord 'A'
  print $ chr 65

  let text = rot13 "hello, world!"
  print "rot13 encoded"
  print text
  print "rot13 decoded"
  print $ rot13 text

  let arr = [4, 2, 9, 6, 8, 5, 7, 1, 3]
  print "array"
  print arr
  print "sorted"
  print $ isort arr
