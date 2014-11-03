printf "Installing PIP... "
yes | sudo apt-get install python-pip > /dev/null 2>&1
printf "DONE\n"

printf "Creating VENV... "
virtualenv venv > /dev/null 2>&1
printf "DONE\n"

printf "Populating VENV... "
source venv/bin/activate
printf "Django... "
pip install django > /dev/null 2>&1
printf "DONE\n"
deactivate


