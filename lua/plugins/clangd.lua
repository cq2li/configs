return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "docker",
            "exec",
            "-i",
            "memsql-clangd",
            "/usr/local/clang+llvm-13.0.0/bin/clangd",
            "--header-insertion=never",
            "--header-insertion-decorators",
            "--compile-commands-dir=/home/georgeli/memsql/debug/",
            "--background-index=true",
            "--j=10",
            "--all-scopes-completion",
            "--pch-storage=memory",
            "--tweaks=-I/home/georgeli/memsql/memsql/clang_modules",
            --"--tweaks=-fno-modules,-fno-modules-codegen,-fno-modules-debuginfo,-fno-modules-cache-path,-fno-modules-disable-diagnostic-validation,-UCOMPILE_HEADERS",
            "--tweaks=-std=C++17,-ferror-limit=9999",
          },
          root_dir = "/home/georgeli/memsql",
        },
      },
    },
  },
}
