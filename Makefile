TARGETS := aoc1

all: $(TARGETS)

.PHONY: all

$(TARGETS): %: %.ros
	@echo "Building $@ ..."
	ros build $<
	@echo "Building $@ finished"

clean:
	@echo "Cleanup: removing all executables ..."
	rm -fr $(TARGETS)
	@echo "All clean."
