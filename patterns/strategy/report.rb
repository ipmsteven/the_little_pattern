class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'title'
    @text  = ['bla', 'bla', 'bla']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end

HTML_FORMATTER = lambda do |context|
  puts '<html>'
  puts '<head>'
  puts "<title>#{context.title}</title>"
  puts '</head>'
  puts '<body>'
  context.text.each do |line|
    puts "<p>#{line}</p>"
  end
  puts '</body>'
  puts '<html>'
end

report = Report.new(HTML_FORMATTER)
report.output_report

#The Strategy pattern is a delegation-based approach to solve the
#same problem as the Template Method pattern. Instead of teasing
#out the variable parts of your algorithm and pushing them down
#into subclasses, you simply implement each version of your algorithm
#as a separate object. You can then vary the algorithm by supplying
#different strategy objects to the context
