grade: grader
	./grader

grader: main.c poly.c measure_time_std.o
	gcc $^ -o $@ -O2

clean:
	rm grader