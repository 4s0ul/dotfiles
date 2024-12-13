return {                                                                                                                      
   {                                                                                                                           
     "neovim/nvim-lspconfig",                                                                                                  
     lazy = false,                                                                                                             
     config = function()                                                                                                       
                                                                                                                               
       local lspconfig = require("lspconfig")                                                                                  
                                                                                                                               
       local on_attach = function(_, bufnr)                                                                                    
         local opts = { noremap = true, silent = true, buffer = bufnr }                                                        
         vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)                                                                     
         vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)                                                       
         vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)                                                       
         vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, opts)                                                           
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)                                                      
         vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)                                                           
       end                                                                                                                     
                                                                                                                               
       lspconfig.pyright.setup({                                                                                               
         on_attach = on_attach,                                                                                                
       })                                                                                                                      
                                                                                                                               
     end                                                                                                                       
   }                                                                                                                           
 }        
