module ReVIEW
  module BuilderOverride
    Compiler.definline :char

    def inline_char(id)
      '◆未定義◆'
    end
  end

  class Builder
    prepend BuilderOverride
  end

  module IndexBuilderOverride
    def inline_char(id)
      inline_icon(id)
    end
  end

  class IndexBuilder
    prepend IndexBuilderOverride
  end

  module HTMLBuilderOverride
    def inline_char(id)
      case id
      when 'foo'
        icon = 'foo'
        name = 'ふー氏'
      when 'bar'
        icon = 'bar'
        name = 'ばー氏'
      end
      noindent
      inline_icon(icon) + inline_strong("#{name}: ")
    end
  end

  class HTMLBuilder
    prepend HTMLBuilderOverride
  end

end
