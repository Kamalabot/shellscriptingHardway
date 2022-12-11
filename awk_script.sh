#!/usr/bin/awk -f

BEGIN{
    FS = ":"
  }
  {
    printf("%s home dir is %s\n", $1, $5)

  }

