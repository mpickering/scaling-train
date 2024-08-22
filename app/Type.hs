module Type where
import Language.Haskell.TH.Syntax
import Data.Maybe
import Prelude

data E = E
  { a1 :: Name
  , a2 :: Maybe String
  , a3 :: [C]
  }
  deriving (Show)

data C = C
  { c1 :: Name
  , c2 :: Maybe String
  }
  deriving (Show)
