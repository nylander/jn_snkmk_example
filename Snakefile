refs, = glob_wildcards("data/{f}.fas")

def get_input(wildcards):
    """Testing the glob function"""
    import glob
    return glob.glob("data/*.fas")

rule all:
    input:
        "concatenated.fas"

rule cat_1:
    """Works on 8,000 input files, not 18,000"""
    input:
        expand("data/{ref}.fas", ref=refs)
    output:
        "concatenated.fas"
    shell:
        "cat {input} > {output}"

#rule cat_2:
#    """Works on 8,000 input files, not 18,000"""
#    input:
#        get_input
#    output:
#        "concatenated.fas"
#    shell:
#        "cat {input} > {output}"

#rule cat_3:
#    """Works on 8,000 input files, not 18,000"""
#    input:
#        get_input
#    output:
#        "concatenated.fas"
#    shell:
#        "for f in {input} ; do cat $f >> {output} ; done"

#rule cat_4:
#    """Works on 8,000 input files, not 18,000"""
#    input:
#        expand("data/{ref}.fas", ref=refs)
#    output:
#        "concatenated.fas"
#    shell:
#        "cat {input} > {output}"

#rule cat_5:
#    """Works on 8,000 AND 18,000 input files"""
#    output:
#        "concatenated.fas"
#    shell:
#        "find data -type f -name \*.fas -exec cat {{}} \+ > {output}"

rule clean:
    shell:
        "rm -f data concatenated.fas .snakemake"
