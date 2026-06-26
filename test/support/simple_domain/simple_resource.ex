# SPDX-FileCopyrightText: 2020 ash_graphql contributors <https://github.com/ash-project/ash_graphql/graphs/contributors>
#
# SPDX-License-Identifier: MIT

defmodule AshGraphql.Test.SimpleResource do
  @moduledoc false
  # Used for simple one-off manual tests
  use Ash.Resource,
    extensions: [AshGraphql.Resource],
    domain: AshGraphql.Test.SimpleDomain

  resource do
    require_primary_key?(false)
  end

  actions do
    defaults([:read])
  end
end
