isInEllipse :: (Num a, Eq a, Show a) => (a,a) -> (a,a) -> a -> (a, a) -> Bool
isInEllipse (xa, ya) (xb, yb) r (x,y) = abs (x - xa) + abs (x - xb) + abs (y - ya) + abs (y - yb) == r

defaultEllipse = isInEllipse (-2,0) (2,0) 8

f = defaultEllipse
defaultMain = do
    putStrLn "Give a position (x,y)"
    (x, y) <- fmap read getLine
    putStrLn $ if f (x,y) then "Right !" else "No !"
    defaultMain

bidimensionalInterval :: (Enum a) => a -> a -> [(a,a)]
bidimensionalInterval minBound maxBound = [(a, b) | a <- [minBound..maxBound], b <- [minBound..maxBound]]

main = do
    putStrLn "Entrez (xa, ya), puis (xb, yb), puis r"
    (xa, ya) <- fmap read getLine
    (xb, yb) <- fmap read getLine
    r <- fmap read getLine
    let func = isInEllipse (xa, ya) (xb, yb) r
    putStrLn "Entrez les bornes inférieures puis supérieures"
    minB <- fmap read getLine
    maxB <- fmap read getLine
    print $ filter func $ bidimensionalInterval minB maxB 
    main
