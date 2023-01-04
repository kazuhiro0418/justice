module Encryptable
  extend ActiveSupport::Concern

  included do
    # 本当は環境変数にすべきだけど今更なのでハードコーディングしていくぅ
    ENCRYPTION_KEY = "\xA8W.\x12%\x7FRi\x888\xAE\xBD\xA3\xAC\xF3\xF3\x87\xEE\x11\xEE\xD5\xD1\xCBv/\x84\t\xE9\xAAO\xF0\n".freeze

    private

    def encryption_key
      ENCRYPTION_KEY
    end
  end
end
