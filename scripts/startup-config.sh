#!/bin/bash
# This creates a small script running xbacklight.
# You can change the = 30 into another value if you wish. 
# The "|| true" ensures that if xbacklight fails for any reason, X can still start.

sudo bash -c '{
echo "#!/bin/bash"
echo "xbacklight =15 || true"
} >> /etc/lightdm/display-setup-script.sh '

# This makes that script executable
sudo chmod a+rx /etc/lightdm/display-setup-script.sh

# This instructs lightdm to run the script when starting X.
# Specifically, it adds a line display-setup-script in a lightdm configuration file/, but only if there is not one already.
if grep -ri ^display-setup-script /etc/lightdm/
then 
  echo "There may be already a display-setup-script. It may already do what you need. Else please adjust manually" ; 
else 
  if [[ -d /etc/lightdm/lightdm.conf.d ]]
  then
    # Ubuntu 13.10 and above have lightdm.conf.d. 14.04 *only* have lightdm.conf.d
    DESTCONFFILE=/etc/lightdm/lightdm.conf.d/20-default-brightness.conf
  else
    # Ubuntu 12.04, 12.10, 14.10 do not have lightdm.conf.d, we change main configuration file
    DESTCONFFILE=/etc/lightdm/lightdm.conf
  fi
  echo "Writing into $DESTCONFFILE"
  sudo bash -c "{ echo '[SeatDefaults]' ; echo display-setup-script=/etc/lightdm/display-setup-script.sh ; } >>$DESTCONFFILE" ; 
fi
