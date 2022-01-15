
  # gpg
  function init_gpg 
    	set -Ux GPG_TTY (tty) 
    	gpg-connect-agent UPDATESTARTUPTTY /bye >> /home/me/.local/var/logs/sway.log
  end
  
  
  # ssh
  function init_ssh 
    set -l agent (ssh-agent | rg -i SSH_AUTH_SOCK | sed -e s/SSH_AUTH_SOCK\=// | sed -e s/\;\ export\ SSH_AUTH_SOCK\;//g)
    set -l pid (ssh-agent | rg -i SSH_AGENT_PID | sed -e s/SSH_AGENT_PID\=// | sed -e s/\;\ export\ SSH_AGENT_PID\;//g)
    set -Ux SSH_AUTH_SOCK $agent
    set -Ux SSH_AGENT_PID $pid 
    ssh-add ~/.ssh/id_rsa >> /home/me/.local/var/logs/sway.log
    set -e agent
    set -e pid
  end
  
  # japokwm
  function new_river 
    river 2> /home/me/.local/var/logs/river.log >> /home/me/.local/var/logs/river.log
  end

init_gpg && 
init_ssh && 
new_river
