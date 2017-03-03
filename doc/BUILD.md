# Building

A Nextflow script is joined to build and push containers

## Usage

```bash
nextflow run . [--docker] [--singularity] [--push] [--containers] <multiqc,fastqc>
```

- `--containers`: Choose which containers to build. By default it is all containers. Possible values are: `bcftools`, `fastqc`, `gatk`, `multiqc`, `mutect1`, `picard`, `mapreads`, `runallelecount`, `runmanta`, `strelka`, `samtools` and `snpeff`
- `--docker`: Build containers using `Docker`
- `--singularity`: Build containers using `Singularity`
- `--push`: Push containers to `DockerHub`

## Example

```bash
nextflow run . --docker --singularity --push --containers multiqc,fastqc
```
