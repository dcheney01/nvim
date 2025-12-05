This is a document containing default vim mappings that are useful and I want to remember

`%` when on a ([{ will navigate to the matching )]} in either direction.
`<ctrl-g>` to show file name, lines, and position.
`<ctrl-i>`, `<ctrl-o>` to navigate between buffers

`"ayiw` into register a (can be any register), yank inner word.
`ciw<ctrl-r>a` change inner word to contents of register a.

`ma[nav to end of selection]"ad'a` mark a and then navigate to end of desired selection. Delete and put into register a from cursor location to mark a. 

' to access marks and " to access registers

`:reg` see what is in each of the registers
`:marks` see where each mark is
