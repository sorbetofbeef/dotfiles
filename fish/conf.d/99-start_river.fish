
  # gpg
  function _gpg 
    	set -Ux GPG_TTY (tty) 
    	gpg-connect-agent UPDATESTARTUPTTY /bye >> /home/me/.local/var/logs/sway.log
  end
  
  
  # ssh
  function _ssh 
    set -l agent (ssh-agent | rg -i SSH_AUTH_SOCK | sed -e s/SSH_AUTH_SOCK\=// | sed -e s/\;\ export\ SSH_AUTH_SOCK\;//g)
    set -l pid (ssh-agent | rg -i SSH_AGENT_PID | sed -e s/SSH_AGENT_PID\=// | sed -e s/\;\ export\ SSH_AGENT_PID\;//g)
    set -Ux SSH_AUTH_SOCK $agent
    set -Ux SSH_AGENT_PID $pid 
    ssh-add ~/.ssh/id_rsa >> /home/me/.local/var/logs/sway.log
    set -e agent
    set -e pid
  end
  
  
  # sway
  function _sway () 
    sway 2> /home/me/.local/var/logs/sway.log >> /home/me/.local/var/logs/sway.log
  end
  
  
  # qtile
  function _qtile () 
    qtile start -b wayland 2> /home/me/.local/var/logs/qtile.log >> /home/me/.local/var/logs/qtile.log
  end
  
  # japokwm
  function new_river () 
    river 2> /home/me/.local/var/logs/river.log >> /home/me/.local/var/logs/river.log
  end

  if test (tty) = /dev/tty1
    _gpg &&
    _ssh &&
    new_river
  end
