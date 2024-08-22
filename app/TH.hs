{-# LANGUAGE TemplateHaskell #-}
module TH where

import Type
import Language.Haskell.TH.Syntax
import Data.Maybe
import Prelude

doc :: Q Exp
doc = [| E
           (Name
              (OccName
                 "")
              (NameG
                 TcClsName
                 (PkgName "inplace")
                 (ModName
                    "D")))
           (Just
              "relationship")
           [C
              (Name
                 (OccName
                    "")
                 (NameG
                    DataName
                    (PkgName "inplace")
                    (ModName
                       "F")))
              (Just "A"),
            C
              (Name
                 (OccName
                    "U")
                 (NameG
                    DataName
                    (PkgName "inplace")
                    (ModName
                       "T")))
              (Just "X"),
            C
              (Name
                 (OccName
                    "P")
                 (NameG
                    DataName
                    (PkgName "i")
                    (ModName
                       "D")))
              (Just "U"),
            C
              (Name
                 (OccName
                    "R")
                 (NameG
                    DataName
                    (PkgName "inplace")
                    (ModName
                       "D")))
              (Just "R")] |]

gen :: Int -> Q Exp
gen 0 = [| [] |]
gen n = [| $doc : $(gen (n-1)) |]
