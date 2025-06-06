{- {-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T 
aWord :: T.Text 
aWord = "Cheese"
main :: IO ()
main = do
    print aWord

breakText :: T.Text
breakText = "simple"
exampleText :: T.Text
exampleText = "This is simple to do" -}

{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

dharma :: T.Text
dharma = " धर्म"

bgText :: T.Text
bgText = "श्रेयान्स्वधर्मो विगुणः परधर्मात्स्वनुष्ठितात्।स्वधर्मे निधनं श्रेयः परधर्मो भयावहः"

highlight :: T.Text -> T.Text -> T.Text
highlight query fullText = T.intercalate highlighted pieces
  where
    pieces = T.splitOn query fullText
    highlighted = mconcat ["{",query,"}"]

main :: IO ()
main = do
  TIO.putStrLn (highlight dharma bgText)
