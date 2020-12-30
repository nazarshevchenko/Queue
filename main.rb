

class Queue
  def initialize
    @queue = []
  end


  def Enqueque(element)
    @queue = @queue << element
  end

  def Dequeque
    @queue.shift
  end

  def Peek
    @queue.first
  end

  def getState
    @queue
  end
end

queue = Queue.new

while true
  puts "0 - Break\n1 - Enqueque\n2 - Dequeque\n3 - Peek\n4 - Get state"
  command = gets.chomp


  case command
  when "0"
    puts :Break
    break

  when "1"
    puts "Set data"
    command = gets.chomp
    queue.Enqueque(command)

  when "2"
    puts queue.Dequeque

  when "3"
    puts queue.Peek

  when "4"
    p queue.getState

  end
end

p command
