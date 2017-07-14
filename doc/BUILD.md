# Building

Use the Nextflow script to build and/or push containers from Docker and/or Singularity.

All the containers have built in UPPMAX directories, so there is no need to add them for use on UPPMAX clusters.
- See the [Singularity UPPMAX guide](https://www.uppmax.uu.se/support-sv/user-guides/singularity-user-guide/)

## Usage

```bash
nextflow run . [--docker] [--singularity] [--singularityPublishDir <path>] [--push] [--containers <container1[,container2..]>] [--repository <repository>] [--tag tag]
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
 - `snpeff` this container serves as a base for `snpeffgrch37` and `snpeffgrch38`
 - `snpeffgrch37`
 - `snpeffgrch38`
 - `strelka`
 - `vep` this container serves as a base for `vepgrch37` and `vepgrch38`
 - `vepgrch37`
 - `vepgrch38`

- `--docker`: Build containers using `Docker`
- `--push`: Push containers to `DockerHub`
- `--repository`: Build containers under given repository. Default: `maxulysse`
- `--singularity`: Build containers using `Singularity`.
- `--singularityPublishDir`: Select where to download containers. Default: `$PWD`
- `--tag`: Build containers using given tag. Default is version number.

## Example

```bash
nextflow run . --docker --singularity --push --containers multiqc,fastqc
```

---
[![](images/SciLifeLab_logo.png "SciLifeLab")][scilifelab-link] [![](images/NGI-final-small.png "NGI")][ngi-link]

[ngi-link]: https://ngisweden.scilifelab.se/
[scilifelab-link]: http://www.scilifelab.se/
