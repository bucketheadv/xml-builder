require "xml/builder/version"

module Xml
  module Builder
    # Your code goes here...
    def method_missing(name, *args, &block)
      define_singleton_method(name) do |*as, &bs|
        @_str ||= ''
        @_str += "<#{name}"
        args = as[0]
        args.each do |k, v|
          @_str += " #{k}=\"#{v}\""
        end if args

        @_str += ">"
        if bs
          str = @_str
          @_str = ''
          str += bs.call || ''
          @_str = str
        end
        @_str += "</#{name}>"
        @_str
      end
      self.send(name, *args, &block)
    end
  end
end
