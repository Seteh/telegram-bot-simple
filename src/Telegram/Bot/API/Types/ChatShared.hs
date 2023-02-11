{-# LANGUAGE DeriveGeneric #-}
module Telegram.Bot.API.Types.ChatShared where

import Data.Aeson (FromJSON (..), ToJSON (..))
import GHC.Generics (Generic)

import Telegram.Bot.API.Types.Common
import Telegram.Bot.API.Internal.Utils

-- ** 'ChatShared'

-- | This object contains information about the chat whose identifier was shared with the bot using a 'KeyboardButtonRequestChat' button.
data ChatShared = ChatShared
  { chatSharedRequestId :: RequestId -- ^ Identifier of the request.
  , chatSharedChatId :: ChatId -- ^ Identifier of the shared chat. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the chat and could be unable to use this identifier, unless the chat is already known to the bot by some other means.
  }
  deriving (Generic, Show)

instance ToJSON   ChatShared where toJSON = gtoJSON
instance FromJSON ChatShared where parseJSON = gparseJSON
