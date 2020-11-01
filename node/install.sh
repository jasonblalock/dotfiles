if test ! $(which spoof 2> /dev/null)
then
  if test $(which yarn 2> /dev/null)
  then
    sudo yarn global add spoof
  fi
fi
