--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Hakyll
import BetterRelativizeUrls



--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match ("content/wiki/*" .||. "content/papers/*.md") $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "style/templates/post.html" defaultContext
            >>= loadAndApplyTemplate "style/templates/default.html" defaultContext
            >>= relativizeUrls
            >>= transformLinkExtensions

    match "content/papers/*.pdf" $ do
        route idRoute
        compile copyFileCompiler


    match "style/css/*" $ do
        route   $ idRoute
        compile compressCssCompiler


    match "content/index.md" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
                >>= loadAndApplyTemplate "style/templates/default.html" defaultContext
                >>= relativizeUrls
                >>= transformLinkExtensions

    match "content/wiki.md" $ do
        route $ setExtension "html"
        let wikiCtx =
              defaultContext <>
              listField "posts" defaultContext (loadAll "content/wiki/*")

        compile $ pandocCompiler
                >>= loadAndApplyTemplate "style/templates/wikiList.html" wikiCtx
                >>= loadAndApplyTemplate "style/templates/default.html" wikiCtx
                >>= relativizeUrls

    match "style/templates/*" $ compile templateBodyCompiler


--------------------------------------------------------------------------------



