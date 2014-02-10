require 'open3'

Open3.popen3('ls -l no_such_directory') { |stdin, stdout, stderr.read }
# => "ls: no_such_directory: no such file or directory\n"

