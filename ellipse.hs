
data Coord = Coord Float Float
xOf :: Coord -> Float
xOf (x,_) = x
yOf :: Coord -> Float
yOf (_,y) = y


isInEllpise :: Coord -> Coord -> Float -> Coord -> Bool
isInEllpise A B r X = False

