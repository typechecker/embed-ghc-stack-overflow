{-# LANGUAGE TemplateHaskell #-}

module MyLib (someFunc) where

import Prelude hiding (putStrLn)
import Data.ByteString (ByteString)
import Data.ByteString.Char8 (putStrLn)
import Data.FileEmbed (embedFile, makeRelativeToProject)

file :: ByteString
file = $(embedFile =<< makeRelativeToProject "data/big.csv")

someFunc :: IO ()
someFunc = putStrLn file