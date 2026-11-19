IMAGE := nyc-payroll-report
DATA := data/citywide-payroll-data-fiscal-year.csv
REPORT := output/611_FP.html

.PHONY: all docker-build report clean

all: report

docker-build:
	docker build -t $(IMAGE) .

report: docker-build $(DATA) 611_FP.Rmd
	mkdir -p output
	docker run --rm -v "$(CURDIR):/project" -w /project $(IMAGE) \
	  Rscript -e 'rmarkdown::render("611_FP.Rmd", output_format="html_document", output_file="611_FP.html", output_dir="output", envir=new.env(parent=globalenv()))'

clean:
	rm -rf output/611_FP.html output/611_FP_files
