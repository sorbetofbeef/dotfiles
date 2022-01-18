  # ssh
  function init_ssh 
    set -l agent (ssh-agent | rg -i SSH_AUTH_SOCK | sed -e s/SSH_AUTH_SOCK\=// | sed -e s/\;\ export\ SSH_AUTH_SOCK\;//g)
    set -l pid (ssh-agent | rg -i SSH_AGENT_PID | sed -e s/SSH_AGENT_PID\=// | sed -e s/\;\ export\ SSH_AGENT_PID\;//g)
    set -gx SSH_AUTH_SOCK $agent
    set -gx SSH_AGENT_PID $pid 
    ssh-add ~/.ssh/id_rsa
    set -e agent
    set -e pid
  end
