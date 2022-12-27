local executable = vim.fn.executable

-- Ruby
if executable("ruby") then
  vim.cmd[[autocmd BufRead,BufNewFile *.rb nnoremap <silent> <F5> :% w !ruby -w<Enter>]]
else
  print("You need to install Ruby first!")
end

-- Javascript
if executable("node") then
  vim.cmd[[autocmd BufRead,BufNewFile *.js nnoremap <silent> <F5> :% w !node<Enter>]]
else
  print("You need to install Node first!")
end

