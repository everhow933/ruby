#
# This test file concludes tests which point out known bugs.
# So all tests will cause failure.
#

assert_equal '0', %q{
  GC.stress = true
  pid = fork {}
  Process.wait pid
  $?.to_i
}, '[ruby-dev:32404]'
