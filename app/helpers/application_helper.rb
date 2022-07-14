module ApplicationHelper
    def flash_message
        messages = ""
        icono = ""
        [:notice, :info, :warning, :error].each { |type|
            if flash[type]
                case type
                when :notice
                    icono = "fa-check-circle"
                    color = "notice"
                when :info
                    icono = "fa-info-circle"
                    color = "info"
                when :warning
                    icono = "fa-warning"
                    color = "warning"
                when :error
                    icono = "fa-times-circle"
                    color = "error"
                end
                 messages += "<div id=\"flash_message\" class=\"base-alert #{color}\" role='alert' onmouseover=\"fadeOutEffect(this);\"><table><tr><td><i class=\"fa #{icono} #{color} fa-2x\">&nbsp;&nbsp;</i></td><td class=\"#{color} fa-x1\">#{flash[type]}</td></tr></table></div>"
                end
        }
        messages.html_safe
    end
end
