include Makefile.src

TARGET = pm.py

# PyQt4 & PyQt5
req_ai:
	sudo apt install python-qt4 qt4-default qt4-doc qt4-dev-tools pyqt4-dev-tools	# PyQt4 for python2
	sudo apt install python3-pyqt4	# PyQt4 for python3
	sudo apt install qt4-designer	# QT-Designer for PyQt4
	sudo apt install python-qwt5-qt4	# QT Widget 5 for PyQt4
	sudo apt install python3-tk tk-dev
	sudo apt install qt5-default	# PyQt5 for python3
	sudo apt install pyqt5-dev pyqt5-dev-tools qttools5-dev-tools
	pip3 install -r requirements.txt
	@echo "After successful installation, Logout and Login in again!"
