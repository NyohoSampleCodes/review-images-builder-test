module ReVIEW
  class Compiler
    definline :char
  end

  class ReVIEW::HTMLBuilder
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
end
