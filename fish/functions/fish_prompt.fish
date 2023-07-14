function fish_prompt
  set -l user_char '$'
  if fish_is_root_user
    set user_char '#'
  end
  echo \
    (set_color $fish_color_keyword)"$USER"(set_color $fish_color_normal)"@$hostname$user_char "
end
