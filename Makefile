output=presentation


all:
	make presentation


introduction:
	echo $(output)
	landslide intro/intro.md -d $(output)/introduction.html
	#landslide intro/intro.md -d $(output)/introduction.pdf


linux_lesson:
	landslide linux/intro.md -d $(output)/linux_introduction.html
	#landslide linux/intro.md -d $(output)/linux_introduction.pdf


source_management:
	landslide source_management/intro.md -d $(output)/source_management_introduction.html
	#landslide linux/intro.md -d $(output)/source_management_introduction.pdf


presentation:
	mkdir $(output)
	make introduction
	make linux_lesson
	make source_management


clean:
	rm -r $(output)


develop:
	pip install -r src/requirements.txt
