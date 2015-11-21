class ParseTemplate

  attr_reader :result

  def initialize(template, keys)
    @template = template
    @keys = keys
    @result = ""
  end

  def parse
    @keys.each do |k, v|
      @result = @template.gsub!("{#{k}}", v)
    end
    @result
  end
end
