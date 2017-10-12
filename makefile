all: build doczip

build: college.o course.o collegemain.o
	g++ college.o course.o collegemain.o -o build

college.o:college.cc college.h
	g++ -c college.cc

course.o:course.cc course.h
	g++ -c course.cc

collegemain.o:collegemain.cc course.h node.h college.h
	g++ -c collegemain.cc

clean:
	-rm *.o build
	-rm -rf html latex

doc: 

myexe:

doczip:

