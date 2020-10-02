module BetterRelativizeUrls
  ( transformLinkExtensions
  ) where

import System.FilePath ( replaceExtension
                       , isExtensionOf)
import Hakyll.Web.Html (withUrls)
import Hakyll.Core.Compiler
import Hakyll.Core.Item

transformLinkExtensions :: Item String
                        -> Compiler (Item String)
transformLinkExtensions item = return $ fmap (withUrls ext) item
  where
    ext :: String -> String
    ext x
      | isExtensionOf "md" x = replaceExtension x "html"
      | otherwise = x

