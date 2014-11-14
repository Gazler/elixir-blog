defmodule Blog.View do
  use Phoenix.View, root: "web/templates"

  # Everything in this block is available runs in this
  # module and in other views that use MyApp.View
  using do
    quote do
      # Import common functionality
      import Blog.I18n
      import Blog.Router.Helpers

      # Use Phoenix.HTML to import all HTML functions (forms, tags, etc)
      use Phoenix.HTML

      # Common aliases
      alias Phoenix.Controller.Flash
    end
  end

  # Functions defined here are available to all other views/templates
end
