all: paper.tex figures
	pdflatex paper.tex
	pdflatex paper.tex

figures: btrfs-node.pdf btrfs-header.pdf btrfs-leaf.pdf algo-perf-data.png

btrfs-node.pdf: btrfs-node.dot
	dot -Tpdf -o btrfs-node.pdf btrfs-node.dot

btrfs-header.pdf: btrfs-header.dot
	dot -Tpdf -o btrfs-header.pdf btrfs-header.dot

btrfs-leaf.pdf: btrfs-leaf.dot
	dot -Tpdf -o btrfs-leaf.pdf btrfs-leaf.dot

algo-perf-data.png:
	gnuplot data.gp

.PHONY: clean
clean:
	rm -f *.aux  *.log *.pdf *.lof *.out *.png
