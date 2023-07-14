function center_print
  echo (string pad -c ' ' -w (math floor (math (string length $argv)+$COLUMNS)/2) $argv)
end

function fish_greeting
  echo "Hello $USER@$hostname"
  echo "Host: "(command uname -mo)
  echo "Awaiting your input..."
end
