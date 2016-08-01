module Window where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)

foreign import data CONFIRM :: !
foreign import data PROMPT  :: !
foreign import data ALERT   :: !
foreign import data WINDOW  :: !
foreign import data Window  :: *

foreign import parent :: Window
foreign import window :: Window
foreign import top    :: Window


alert :: forall eff. String -> Eff (alert :: ALERT | eff) Unit
alert = alert' window
foreign import alert' :: forall eff. Window -> String -> Eff (alert :: ALERT | eff) Unit

close :: forall eff. Eff (window :: WINDOW | eff) Unit
close = close' window
foreign import close' :: forall eff. Window -> Eff (window :: WINDOW | eff) Unit

closed :: Boolean
closed = closed' window
foreign import closed' :: Window -> Boolean

confirm :: forall eff. String -> Eff (confirm :: CONFIRM | eff) Boolean
confirm = confirm' window
foreign import confirm' :: forall eff. Window -> String -> Eff (confirm :: CONFIRM | eff) Boolean

innerHeight :: Int
innerHeight = innerHeight' window
foreign import innerHeight' :: Window -> Int

innerWidth :: Int
innerWidth = innerWidth' window
foreign import innerWidth' :: Window -> Int

length :: Int
length = length' window
foreign import length' :: Window -> Int

minimize :: forall eff. Eff (window :: WINDOW | eff) Unit
minimize = minimize' window
foreign import minimize' :: forall eff. Window -> Eff (window :: WINDOW | eff) Unit

moveBy :: forall eff. Int -> Int -> Eff (window :: WINDOW | eff) Unit
moveBy = moveBy' window
foreign import moveBy' :: forall eff. Window -> Int -> Int -> Eff (window :: WINDOW | eff) Unit

moveTo :: forall eff. Int -> Int -> Eff (window :: WINDOW | eff) Unit
moveTo = moveTo' window
foreign import moveTo' :: forall eff. Window -> Int -> Int -> Eff (window :: WINDOW | eff) Unit

outerHeight :: Int
outerHeight = outerHeight' window
foreign import outerHeight' :: Window -> Int

outerWidth :: Int
outerWidth = outerWidth' window
foreign import outerWidth' :: Window -> Int

print :: forall eff. Eff (window :: WINDOW | eff) Unit
print = print' window
foreign import print' :: forall eff. Window -> Eff (window :: WINDOW | eff) Unit

prompt :: forall eff. String -> Eff (prompt :: PROMPT | eff) (Maybe String)
prompt = prompt' window 
foreign import prompt' :: forall eff. Window -> String -> Eff (prompt :: PROMPT | eff) (Maybe String)

resizeBy :: forall eff. Int -> Int -> Eff (window :: WINDOW | eff) Unit
resizeBy = resizeBy' window
foreign import resizeBy' :: forall eff. Window -> Int -> Int -> Eff (window :: WINDOW | eff) Unit

resizeTo :: forall eff. Int -> Int -> Eff (window :: WINDOW | eff) Unit
resizeTo = resizeTo' window
foreign import resizeTo' :: forall eff. Window -> Int -> Int -> Eff (window :: WINDOW | eff) Unit

screenX :: Int
screenX = screenX' window
foreign import screenX' :: Window -> Int

screenY :: Int
screenY = screenY' window
foreign import screenY' :: Window -> Int

scroll :: forall eff. Int -> Int -> Eff (window :: WINDOW | eff) Unit
scroll = scroll' window
foreign import scroll' :: forall eff. Window -> Int -> Int -> Eff (window :: WINDOW | eff) Unit

scrollBy :: forall eff. Int -> Int -> Eff (window :: WINDOW | eff) Unit
scrollBy = scrollBy' window
foreign import scrollBy' :: forall eff. Window -> Int -> Int -> Eff (window :: WINDOW | eff) Unit

scrollX :: Int
scrollX = scrollX' window
foreign import scrollX' :: Window -> Int

scrollY :: Int
scrollY = scrollY' window
foreign import scrollY' :: Window -> Int

{--
TODO (? means unsure if appropriate for library scope):

document?
frameElement?
frames?
history
localStorage
location
navigator
performance
sessionStorage
open
--}
