require 'drb'

begin
    rshell = DRbObject.new_with_uri("druby://localhost:8080")
    loop do
        STDOUT.print("Command: ")
        command = gets
        
        STDOUT.puts("\nOutput: ")
        puts rshell.exec command
    end
rescue => exception
    STDOUT.puts(exception)
end