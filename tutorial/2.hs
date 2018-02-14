-- length
length' [] = 0
length' (_:xs) = 1 + length' xs --リストを再帰的に処理する

-- tuple 足した結果と引いた結果が入る
addsub x y = (x+y, x-y)


main = do
  -- list 中身は同じ型
  let a = [1, 2, 5]
  let b = [4, 3]
  print "list a b:"
  print a
  print b

  print "pick list third from a :"
  print $ a !! 2

  print "concat list :"
  print $ a ++ b

  print "length list a:"
  print $ length a

  print "sum list a :"
  print $ sum a

  print "take list a :"
  print $ take 2 a

  print "drop list a :"
  print $ drop 2 a

  print "reverse list a :"
  print $ reverse a

  print "length' a :"
  print $ length' a


  -- tuple 中身は異なる型でも良い
  print ("tuple")
  let t = (1, True)
  print (t)

  let a = addsub 1 2
  let (a1, a2) = addsub 1 2
  print ("a(1, 2) = (x+y, x-y)")
  print a
  print ("tuple a's first")
  print $ fst a
  print a1
  print ("tuple a's second")
  print $ snd a
  print a2

  let a3 = (1, 2, 3)
  let (_, _, a3z) = a3
  print ("tupple")
  print $ a3
  print ("tupple thirds")
  print $ a3z
