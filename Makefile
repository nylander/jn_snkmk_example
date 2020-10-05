n=8000

all: generate_data

generate_data:
	@./generate_data.sh $(n)

dryrun:
	snakemake -j -p -n

run:
	snakemake -j -p

clean:
	rm -rf data concatenated.fas .snakemake
