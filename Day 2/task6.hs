
-- normal version 

maybeDo :: (a-> b-> c)-> Maybe a-> Maybe b-> Maybe c
maybeDo _ Nothing _ = Nothing
maybeDo _ _ Nothing = Nothing
maybeDo func (Just a) (Just b) = Just (func a b)


-- using >>=

maybeDo :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
maybeDo func ma mb =
  ma >>= \a ->
  mb >>= \b ->
  return (func a b)

-- using do notation
maybeDo :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
maybeDo func ma mb = do
  a <- ma
  b <- mb
  return (func a b)

-- using <$> an <*>

maybeDo :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
maybeDo func ma mb = func <$> ma <*> mb
