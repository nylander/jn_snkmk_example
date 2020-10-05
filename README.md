# Snakemake scaling/globbing issue?

- Last modified: mån okt 05, 2020  07:02
- Sign: JN

## Description

Basically, I was  trying to transform this command into a rule in snakemake:

    $ find data -type f -name '*.fas' -exec cat {} \+ > concatenated.fas

The command finds all files ending in `.fas` in the directory `data`, and
then concatenates them to a single file using `cat`.

Being a beginner in snakemake, I was able to come up with one approach in my
Snakefile that will accomplish this task -- for a small to modest number of
input files. On my real data (thousands of files), however, snakemake returns
an error:

    (one of the commands exited with non-zero exit code; note that snakemake uses bash strict mode!)
    Shutting down, this might take some time.
    Exiting because a job execution failed. Look above for error message


## Question

How do can I accomplish the concatenation in snakemake, "the snakemake style"?


## Examples

In the [Snakefile](Snakefile), there are a number of alternative rules (`cat_n`),
with alternative attempts of accomplishing a cat using snakemake and bash syntax.
No strict Python code was attempted (for reading a large number of files and
concatenating them). To test, edit the Snakefile and run snakemake.


## Example data

To help running the example, one can generate example data by just running `make`.
To change the number of input files, use `make n=8000`, `make n=18000`, etc.
There is also a `make clean`, `make dryrun`, and `make run` available for calling
snakemake.

For example:

    make clean
    make n=18000
    make run

