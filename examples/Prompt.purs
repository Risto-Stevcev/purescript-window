module Examples.Prompt where

import Prelude (Unit, bind, (<>), ($))
import Window (CONFIRM, PROMPT, ALERT, alert, prompt)
import Data.Maybe (Maybe(..))
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)


main :: forall e. Eff (console :: CONSOLE, alert :: ALERT, prompt :: PROMPT, confirm :: CONFIRM | e) Unit
main = do
  response <- prompt "Enter your name:"
  case response of
    (Just name) -> alert $ "Hello, " <> name <> "!"
    Nothing     -> alert "Hello, stranger!"
