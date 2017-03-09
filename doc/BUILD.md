# Building

A Nextflow script is joined to build and push containers

## Usage

```bash
nextflow run . [--docker] [--singularity] [--push] [--containers] <multiqc,fastqc>
```

- `--containers`: Choose which containers to build. Default: `all`. Possible values (to separate by commas):
 - `all` -  Build all available containers.
 - `bcftools`
 - `fastqc`
 - `gatk`
 - `multiqc`
 - `mutect1`
 - `picard`
 - `mapreads`
 - `runallelecount`
 - `runconvertallelecounts`
 - `runascat`
 - `runmanta`
 - `strelka`
 - `samtools`
 - `snpeff`
- `--docker`: Build containers using `Docker`
- `--singularity`: Build containers using `Singularity`
- `--push`: Push containers to `DockerHub`

## Example

```bash
nextflow run . --docker --singularity --push --containers multiqc,fastqc
```

---
[![](images/SciLifeLab_logo.png "SciLifeLab")][scilifelab-link] [![](images/NGI-final-small.png "NGI")][ngi-link]

[ngi-link]: https://ngisweden.scilifelab.se/
[scilifelab-link]: http://www.scilifelab.se/
