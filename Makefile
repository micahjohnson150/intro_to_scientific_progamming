output=./presentation

.PHONY: all slides setup


all: slides


slides:
	make clean
	make setup
	make introduction
	make linux_lesson
	make source_management


setup:
	mkdir $(output)


introduction:
	landslide intro/intro.md -d $(output)/introduction.html


linux_lesson:
	landslide linux/intro.md -d $(output)/linux_introduction.html


source_management:
	landslide source_management/intro.md -d $(output)/source_management_introduction.html


clean:
	rm -rf $(output)


develop:
	pip install -r src/requirements.txt
