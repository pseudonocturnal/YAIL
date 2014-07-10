OBJS = List.o BinaryTree.o Lex.o Parse.o HashMap.o Compile.o ILCLinear.o LiveAnalyse.o Set.o Graph.o
FLAGS = -std='c99'
BIN = Bin/

default : $(OBJS)
	gcc $(FLAGS) $(OBJS) -o $(BIN)YAIL

%.o : %.c
	gcc $(FLAGS) -c $<

clean : 
	rm $(OBJS)
