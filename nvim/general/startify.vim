let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
	\ { 'type': 'sessions',  'header': ['   Sessions']       },
	\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
	\ { 'type': 'files',     'header': ['   MRU']            },
\ ]

