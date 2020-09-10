function fish_mode_prompt --description "Displays prompt mode"
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set_color --bold red
                echo 🅽
            case insert
                set_color --bold blue
                echo 🅸
            case replace-one
                set_color --bold green
                echo 🆁
            case visual
                set_color --bold cyan
                echo 🆅
            end
        set_color normal
        printf " "
    end
end
