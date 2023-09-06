#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { PBMM2 } from '../../../../modules/nf-core/pbmm2/main.nf'

workflow test_pbmm2 {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    PBMM2 ( input )
}
