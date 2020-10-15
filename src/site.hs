--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import Hakyll
import BetterRelativizeUrls
import Text.Pandoc.Options


wikiMatcher :: Pattern
wikiMatcher = ( "content/research/wiki/*"
           .||. "content/research/resources/*.md"
           .||. "content/school/wiki/*"
           .||. "content/career/wiki/*"
           .||. "content/notes/wiki/*"
           .||. "content/finances/wiki/*"
           .||. "content/blog/wiki/*")

--------------------------------------------------------------------------------

mathPandocCompiler =
  let defaultExtensions = defaultHakyllWriterOptions
      writerOptions = defaultHakyllWriterOptions
                        { writerExtensions = (writerExtensions defaultHakyllWriterOptions)
                        , writerHTMLMathMethod = MathJax ""
                        }
  in pandocCompilerWith defaultHakyllReaderOptions writerOptions



--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match wikiMatcher $ do
        route $ setExtension "html"
        compile $ mathPandocCompiler
            >>= loadAndApplyTemplate "style/templates/post.html" defaultContext
            >>= loadAndApplyTemplate "style/templates/default.html" defaultContext
            >>= relativizeUrls
            >>= transformLinkExtensions

    match "content/research/resources/*.pdf" $ do
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
              listField "posts" defaultContext (loadAll wikiMatcher)

        compile $ pandocCompiler
                >>= loadAndApplyTemplate "style/templates/wikiList.html" wikiCtx
                >>= loadAndApplyTemplate "style/templates/default.html" wikiCtx
                >>= relativizeUrls

    match "style/templates/*" $ compile templateBodyCompiler


--------------------------------------------------------------------------------



