return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20, -- Tamanho padrão do terminal
      open_mapping = [[<C-T>]], -- Atalho para abrir/fechar o terminal
      hide_numbers = true, -- Ocultar números na linha
      shade_filetypes = {},
      shade_terminals = true, -- Habilitar sombreado para terminais
      shading_factor = 2, -- Grau de sombreamento
      start_in_insert = true, -- Iniciar no modo INSERT
      persist_size = true, -- Lembrar o tamanho do terminal
      direction = "float", -- "horizontal", "vertical", "tab" ou "float"
      close_on_exit = true, -- Fechar terminal ao sair
      shell = vim.o.shell, -- Usar o shell padrão
      float_opts = {
        border = "curved", -- Estilo da borda: "single", "double", "shadow", etc.
      },
    })
  end,
}
