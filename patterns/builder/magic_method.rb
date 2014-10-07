class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def turbo
    @computer.motherboard.cpu = TurboCPU.new
  end

  def display=(display)
    @computer.display = display
  end

  def memory_size=(size)
    @computer.motherboard.memory_size = size
  end

  def add_cd
    @computer.drives << Drive.new(:cd, 760, true)
  end

  def add_dvd
    @computer.drives << Drive.new(:dvd, 4000, true)
  end

  def add_hard_disk
    @computer.drives << Drive.new(:hard_disk, 500, true)
  end

  def method_missing(name, *args)
    words = name.to_s.split("_")
    return super(name, *args) unless words.shift == 'add'

    words.each do |word|
      next if word == 'and'
      add_cd if word == 'cd'
      add_dvd if word == 'dvd'
      add_hard_disk if word == 'harddisk'
      turbo if word == 'turbo'
    end
  end
end

builder =  ComputerBuilder.new
builder.add_turbo_and_add_dvd_and_harddisk_and_dvd_and_cd

