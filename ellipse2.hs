isInEllipse :: (Num a, Eq a, Show a) => (a,a) -> (a,a) -> a -> (a, a) -> Bool
isInEllipse (xa, ya) (xb, yb) r (x,y) = abs (x - xa) + abs (x - xb) + abs (y - ya) + abs (y - yb) == r

defaultEllipse = isInEllipse (-2,0) (2,0) 8

f = defaultEllipse
main = do
    putStrLn "Give a position (x,y)"
    (x, y) <- fmap read getLine
    putStrLn $ if f (x,y) then "Right !" else "No !"
    main
