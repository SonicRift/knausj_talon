run stacks: key(ctrl-alt-d)
commander: key(cmd-a)
shock: key(cmd-shift-enter)
^click replace <user.text>$:
  mouse_click()
	mouse_click()
  insert(user.text)
^click double copy$:
  mouse_click()
	mouse_click()
  key(cmd-c)
^click double paste$:
  mouse_click()
	mouse_click()
  key(cmd-v)
^more <user.text>:
  insert(' ' + user.text)
^swipe <user.text>$:
  insert(', ' + user.text)
^point <user.text>$:
  insert('.' + user.text)
^teapot <user.text>$:
  insert('this.' + user.text)
^pad right <user.text>$:
  insert(user.text + ' ')
trestle:
  key(cmd-/)
^word get hub:
  insert('github')
^snippet thanks:
  insert('Thanks,\nAlex')
^snippet counsel:
  insert('console.log')
^replace last <user.text>:
  key(alt-backspace)
  insert(user.text)
^launcher$:
  key(cmd-space)
