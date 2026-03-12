return {
  "AlexandrosAlexiou/kotlin.nvim",
  ft = { "kotlin" },
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "stevearc/oil.nvim",
    "folke/trouble.nvim",
  },
  jre_path = "/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home",
  jdk_for_symbol_resolution = "Library/Java/JavaVirtualMachines/temurin-21/Contents/Home",

  jvm_args = {
    "-Xmx2g",
    "-XX\\:MetaspaceSize\\=512M",
    "-XX\\:MaxMetaspaceSize\\=512M",
    "-XX\\:+HeapDumpOnOutOfMemoryError",
    "-Dfile.encoding\\=UTF-8",
  },

  inlay_hints = {
    enabled = true, -- Enable inlay hints (auto-enable on LSP attach)
    parameters = true, -- Show parameter names
    parameters_compiled = true, -- Show compiled parameter names
    parameters_excluded = false, -- Show excluded parameter names
    types_property = true, -- Show property types
    types_variable = true, -- Show local variable types
    function_return = true, -- Show function return types
    function_parameter = true, -- Show function parameter types
    lambda_return = true, -- Show lambda return types
    lambda_receivers_parameters = true, -- Show lambda receivers/parameters
    value_ranges = true, -- Show value ranges
    kotlin_time = true, -- Show kotlin.time warnings
  },
}
