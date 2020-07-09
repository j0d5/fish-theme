function __tweetjay_addPath --description="Adds the given path to the user paths if it exists"
  if test -z $argv[1]
    echo "No path given!"
    return
  end

  for path in $argv
    if test -d $path
      set -U fish_user_paths $fish_user_paths $path
    else
        echo "Path \"$path\" does not exist or is no path."
    end
  end
end
