TARGET = pm.py

what:
	@echo "Usage:"
	@echo "	gui   - Start Simple GUI"
	@echo "	guid  - Start GUI with data, input columns, and output columns"
	@echo "	guid5 - Start GUI with data, 5 input columns, and output columns"
	@echo "	iris  - Start GUI with iris classification data"
	@echo "	wine  - Start GUI with wine classification data"
	@echo "	br    - Start GUI with breast cancer classification data"
	@echo "	req   - Install required environments for PyQt4 and PyQt5"

gui: $(TARGET)
	python3 $(TARGET)

guid: $(TARGET) Data/SeA/params_merged_Toshiba_2018.csv
	python3 $(TARGET) -i Data/SeA/inputs.csv -o Data/SeA/outputs.csv -d Data/SeA/params_merged_Toshiba_2018.csv

guid5: $(TARGET) Data/SeA/params_merged_Toshiba_2018.csv
	python3 $(TARGET) -i Data/SeA/inputs5.csv -o Data/SeA/outputs.csv -d Data/SeA/params_merged_Toshiba_2018.csv

Data/SeA/params_merged_Toshiba_2018.csv: Data/SeA/params_merged_Toshiba_2018.csv.gz
	gzip -d -k Data/SeA/params_merged_Toshiba_2018.csv.gz

iris: $(TARGET)
	python3 $(TARGET) -i Data/iris/inputs.csv -o Data/iris/outputs.csv -d Data/iris/iris.csv

wine: $(TARGET)
	python3 $(TARGET) -i Data/wine/inputs.csv -o Data/wine/outputs.csv -d Data/wine/wine.csv

# Breast Cancer
br: $(GUI_GRID_PY)
	python3 $(TARGET) -i Data/breast_cancer/inputs.csv -o Data/breast_cancer/outputs.csv -d Data/breast_cancer/breast_cancer.csv

# PyQt4 & PyQt5
req:
	sudo apt install python-qt4 qt4-default qt4-doc qt4-dev-tools pyqt4-dev-tools	# PyQt4 for python2
	sudo apt install python3-pyqt4	# PyQt4 for python3
	sudo apt install qt4-designer	# QT-Designer for PyQt4
	sudo apt install python-qwt5-qt4	# QT Widget 5 for PyQt4
	sudo apt install python3-tk tk-dev
	sudo apt install qt5-default	# PyQt5 for python3
	sudo apt install pyqt5-dev pyqt5-dev-tools qttools5-dev-tools
	pip3 install -r requirements.txt
	@echo "After successful installation, Logout and Login in again!"

clean:
	rm -rf __pycache__/ *.so
