# TODO(ninja): Fix
# go: fail test2, test4

MAKEVER:=$(shell make --version | ruby -n0e 'puts $$_[/Make (\d)/,1]')

test1:
	# foo
	echo PASS

test2: make$(MAKEVER)

make4:
	# foo  \
echo PASS

make3:
	# foo  \
	echo PASS

test3: $(shell echo foo #)

test4:
	echo $(shell echo OK #)

foo:
	echo OK
