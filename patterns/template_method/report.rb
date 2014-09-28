class Report
  def initialize
    @title = 'xxx Report'
    @text  = ['bla', 'blabla', 'blablabla']
  end

  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_start
  end

  def output_start
  end

  def output_head
    output_line(@title)
  end

  def output_body_start
  end

  def output_line(line)
    raise 'please implement output_line method'
  end

  def output_body_end
  end

  def output_end
  end
end

class HTMLReport < Report
  def output_start
    puts '<html>'
  end

  def output_head
    puts '<head>'
    puts "<title>#{@title}</title>"
    puts '</head>'
  end

  def output_body_start
    puts '<body>'
  end

  def output_line(line)
    puts "<p>#{line}</p>"
  end

  def output_body_end
    puts '</body>'
  end

  def output_end
    puts "</html>\n\n" #puts eats the first newline -_-|||
  end
end

class PlainTextReport < Report
  def output_head
    puts "***#{@title}***"
    puts
  end

  def output_line(line)
    puts line
  end
end

html_report = HTMLReport.new
html_report.output_report

plain_report = PlainTextReport.new
plain_report.output_report

#The Template Method Pattern is a way of saying that
#if you want to vary an algorithm, one way to do so
#is to code the invariant part in a base class and
#to encapsulate the variable parts in the methods that
#defined by a number of subclass. The base class can
#simply leave the methods completely undefined or provide
#a default implementation for the methods that the
#subclasses can override if they want
