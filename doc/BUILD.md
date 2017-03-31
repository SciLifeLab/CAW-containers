# Building

A Nextflow script is joined to build and push containers

## Usage

```bash
nextflow run . [--docker] [--singularity] [--push] [--containers <container1[,container2..]>] [--repository <repository>] [--tag tag]
```

- `--containers`: Choose which containers to build. Default: `all`. Possible values (to separate by commas):
 - `all` -  Build all available containers.
 - `bcftools`
 - `concatvcf`
 - `fastqc`
 - `freebayes`
 - `gatk`
 - `htslib`
 - `igvtools`
 - `mapreads`
 - `multiqc`
 - `mutect1`
 - `picard`
 - `runallelecount`
 - `runascat`
 - `runconvertallelecounts`
 - `runmanta`
 - `samtools`
 - `snpeff`
 - `snpeffgrch37`
 - `snpeffgrch38`
 - `strelka`
 - `vep`
 - `vepgrch37`
 - `vepgrch38`
- `--docker`: Build containers using `Docker`
- `--repository`: Build containers under given repository. Default: `maxulysse`
- `--singularity`: Build containers using `Singularity`
- `--tag`: Build containers using given tag. Default is version number.
- `--push`: Push containers to `DockerHub`

## Example

```bash
nextflow run . --docker --singularity --push --containers multiqc,fastqc
```

---
[![](images/SciLifeLab_logo.png "SciLifeLab")][scilifelab-link] [![](images/NGI-final-small.png "NGI")][ngi-link]

[ngi-link]: https://ngisweden.scilifelab.se/
[scilifelab-link]: http://www.scilifelab.se/
