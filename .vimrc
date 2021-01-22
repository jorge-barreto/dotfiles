"disable highlight
nmap <S-h> :noh<return>

"delete word in front
imap <C-e> <C-o>de
"nnoremap <C-e> <C-o>de

"traverse paragraphs with arrow keys
imap <S-Up> {
imap <S-Up> {
nmap <S-Up> {
vmap <S-Down> }
nmap <S-Down> }
vmap <S-Down> }

"Open files in the current directory
command -nargs=1 Open exec 'args ' . expand('%:h') . <args>
