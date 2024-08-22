{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-orphans -v2 #-}

module Main where

import Language.Haskell.TH
import Prelude
import Data.Sequences
import Type
import TH

top :: [E]
top =
  sortBy (\e1 e2 -> compare (nameBase e1.a1) (nameBase e2.a1)) $(gen 1000)
