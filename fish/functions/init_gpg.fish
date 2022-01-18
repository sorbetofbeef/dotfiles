  # gpg
  function init_gpg 
    	set -gx GPG_TTY (tty) 
    	gpg-connect-agent UPDATESTARTUPTTY /bye
  end
  
