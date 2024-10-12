defmodule ChatMorseJapaneseKanaWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use ChatMorseJapaneseKanaWeb, :controller` and
  `use ChatMorseJapaneseKanaWeb, :live_view`.
  """
  use ChatMorseJapaneseKanaWeb, :html

  embed_templates "layouts/*"
end
