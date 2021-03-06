let g:switch_custom_definitions = [
  \ {
    \ ':\(\w\+\)': '''\1''',
  \ },
  \ {
    \ '\<\(\w\+\): \(\s*\)': '''\1'' \2=> ',
    \ '''\(\w\+\)'' \(\s*\)=> ': '\1: \2',
  \ },
  \ {
    \ '\<public\>': 'protected',
    \ '\<protected\>': 'private',
    \ '\<private\>': 'public',
  \ },
  \ {
    \ '\<\(it\|describe\|context\|senario\)\>': 'x\1',
    \ '\<x\(it\|describe\|context\|senario\)\>': '\1',
  \ },
  \ {
    \ '\<and\>': 'or',
    \ '\<or\>': 'and',
  \ },
  \ {
    \ '\<if\>': 'unless',
    \ '\<unless\>': 'if',
  \ },
  \ {
    \ '\<true\>': 'false',
    \ '\<false\>': 'true',
  \ },
  \ {
    \ '\<TRUE\>': 'FALSE',
    \ '\<FALSE\>': 'TRUE',
  \ },
  \ {
    \ '\<on\>': 'off',
    \ '\<off\>': 'on',
  \ },
  \ {
    \ '\<ON\>': 'OFF',
    \ '\<OFF\>': 'ON',
  \ },
  \ {
    \ '\<yes\>': 'no',
    \ '\<no\>': 'yes',
  \ },
  \ {
    \ '\<YES\>': 'NO',
    \ '\<NO\>': 'YES',
  \ },
\ ]

function! vimrc#plugin#switch#toggle() abort
  let l:line = getline('.')
  let l:pos = col('.') - 1
  let l:max = len(l:line) - 1

  let l:before = []
  let l:after = []

  " collect quotes before cursor
  let l:i = l:pos
  while l:i >= 0
    let l:c = l:line[l:i]
    let l:c1 = l:i > 0 ? l:line[l:i - 1] : ''

    if (l:c ==# "'" || l:c ==# '"') && l:c1 !=# '\'
      call add(l:before, [l:c, l:i])
    endif

    let l:i -= 1
  endwhile

  let l:bl = len(l:before)

  " collect quotes after cursor
  let l:i = l:pos
  while l:i <= l:max
    let l:c = l:line[l:i]
    let l:c1 = l:pos < l:i ? l:line[l:i - 1] : ''

    if (l:c ==# "'" || l:c ==# '"') && l:c1 !=# '\'
      call add(l:after, [l:c, l:i])
    endif

    let l:i += 1
  endwhile

  let l:al = len(l:after)

  " echomsg '[' join(l:before, ', ') '], [' join(l:after, ', ') ']'

  " squash complete pairs before cursor
  if l:bl >= 3
    let l:last = ''
    let l:lastpos = 0

    let l:i = l:bl - 1
    while l:i >= 0
      if l:last ==# ''
        let l:last = l:before[l:i][0]
      elseif l:last ==# l:before[l:i][0]
        let l:lastpos = l:i
        let l:last = ''
      endif

      let l:i -= 1
    endwhile

    let l:before = l:before[0 : l:lastpos - 1]
    let l:bl = len(l:before)
  endif

  " squash complete pairs after cursor
  if l:al >= 3
    let l:last = ''
    let l:lastpos = 0

    let l:i = l:al - 1
    while l:i >= 0
      if l:last ==# ''
        let l:last = l:after[l:i][0]
      elseif l:last ==# l:after[l:i][0]
        let l:lastpos = l:i
        let l:last = ''
      endif

      let l:i -= 1
    endwhile

    let l:after = l:after[0 : l:lastpos - 1]
    let l:al = len(l:after)
  endif

  " search for the most outer pair around cursor
  let l:b = l:bl - 1
  while l:b >= 0
    let l:a = l:al - 1
    while l:a >= 0
      " echomsg l:before[l:b][0] l:after[l:a][0]

      let l:q = l:before[l:b][0]
      if l:q == l:after[l:a][0]
        let [l:start_pos, l:end_pos] = [l:before[l:b][1], l:after[l:a][1]]
        let l:q_opp = l:q ==# '"' ? "'" : '"'

        let l:buf = ''
        if 0 <= l:start_pos - 1
          let l:buf .= l:line[0 : l:start_pos - 1]
        endif
        let l:buf .= l:q_opp
        if l:start_pos < l:end_pos - 1 && l:start_pos + 1 < l:end_pos
          let l:_buf = l:line[l:start_pos + 1 : l:end_pos - 1]
          let l:_buf = substitute(l:_buf, '\\' . l:q_opp, l:q_opp, 'g')
          let l:_buf = substitute(l:_buf, l:q_opp, '\\' . l:q_opp, 'g')
          let l:_buf = substitute(l:_buf, '\\' . l:q, l:q, 'g')
          let l:buf .= l:_buf
        endif
        let l:buf .= l:q_opp
        if l:end_pos + 1 <= l:max
          let l:buf .= l:line[l:end_pos + 1 : l:max]
        endif

        call setline('.', l:buf)
        return
      endif
      let l:a -= 1
    endwhile
    let l:b -= 1
  endwhile

  " fallback to switch.vim
  :Switch
endfunction
