
OBJFILES=program.o

all: excercise1.exe

excercise1.exe: $(OBJFILES)
	$(CC) -o $@ $(OBJFILES)	-mwindows
	./copy_dependencies

clean:
	$(RM) $(OBJFILES) excercise1.exe
