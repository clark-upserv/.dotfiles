" This is a list of cool functions I've found along the way that I wanted to
" remember
 close terminal buffer if there are no other listed buffers ie terminal is last buffer
 and only one window exists
getbufinfo() - returns a ton of info
filter() - filter a list or dictionary (basically select() in ruby)
v:val - the item being filtered
v:val.listed - when v:val is the information for a single buffer, then v:val.listed is a boolean that returns 0
  if not listed and 1 if listed
listed - listed is one of many attributes of a buffer. I cannot remember exactly what it means but basically I
think listed buffers are the buffers that are not, for lack of better term, "hidden" (an example of a hidden buffer,
and I know there is a better term than hidden), is nerd tree. You would never want to open nerd tree as you are 
scrolling through your buffers. You only open     n
ma - exact same as map in ruby
len - returns the length of a list
the below gets all buf info, then filters to only get buf info for listed buffers (listed is on_exit)
elseif len(map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')) == 1
