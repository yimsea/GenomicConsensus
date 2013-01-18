
Bite-sized Quiver test using the HCV dataset

  $ export DATA=$TESTDIR/../data
  $ export INPUT=$DATA/hcv/aligned_reads.cmp.h5
  $ export REFERENCE=$DATA/hcv/HCV_Ref_For_187140.fasta

Quiver actually makes one error here, which is kind of disappointing,
but this data is from a really ancient instrument-software version, so
I'm not all that surprised.

  $ quiver $INPUT -r $REFERENCE -o v.gff -o css.fa -o css.fq
  * [WARNING] This .cmp.h5 file lacks some of the QV data tracks that are required for optimal performance of the Quiver algorithm.  For optimal results use the ResequencingQVs workflow in SMRTPortal with bas.h5 files from an instrument using software version 1.3.1 or later. (glob)

  $ cat v.gff
  ##gff-version 3
  ##pacbio-variant-version 1.4
  ##date * (glob)
  ##feature-ontology http://song.cvs.sourceforge.net/*checkout*/song/ontology/sofa.obo?revision=1.12
  ##source GenomicConsensus * (glob)
  ##source-commandline * (glob)
  ##sequence-region 5primeEnd 1 156
  ##sequence-region 3primeEnd 1 386
  3primeEnd\t.\tdeletion\t296\t296\t.\t.\t.\treference=G;coverage=76;confidence=93;length=1 (esc)


  $ cat css.fa
  >5primeEnd|quiver
  GGAACCGGTGAGTACACCGGAATTGCCAGGACGACCGGGTCCTTTCGTGGATAAACCCGC
  TCAATGCCTGGAGATTTGGGCGTGCCCCCGCAAGACTGCTAGCCGAGTAGTGTTGGGTCG
  CGAAAGGCCTTGTGGTACTGCCTGATAGGGTGCTTG
  >3primeEnd|quiver
  TACCTGGTCATAGCCTCCGTGAAGGCTCTCAGGCTCGCTGCATCCTCCGGGACTCCCTGA
  CTTTCACAGATAACGACTAAGTCGTCGCCACACACGAGCATGGTGCAGTCCTGGAGCCCA
  GCGGCTCGACAGGCTGCTTTGGCCTTGATGTAGCAGGTGAGGGTGTTACCACAGCTGGTC
  GTCAGTACGCCGCTCGCGCGGCACCTGCGATAGCCGCAGTTTTCCCCCCTTGAATTAGTA
  AGAGGGCCCCCGACATAGAGCCTCTCGGTGAGGGACTTGATGGCCACGCGGGCTTGGGGT
  CCAGGTCACAACATTGGTAAATTGCCTCCTCTGTACGGATATCGCTCTCAGTGACTGTGG
  AGTCAAAGCAGCGGGTATCATACGA

  $ cat css.fq
  @5primeEnd|quiver
  GGAACCGGTGAGTACACCGGAATTGCCAGGACGACCGGGTCCTTTCGTGGATAAACCCGCTCAATGCCTGGAGATTTGGGCGTGCCCCCGCAAGACTGCTAGCCGAGTAGTGTTGGGTCGCGAAAGGCCTTGTGGTACTGCCTGATAGGGTGCTTG
  +
  """~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"""
  @3primeEnd|quiver
  TACCTGGTCATAGCCTCCGTGAAGGCTCTCAGGCTCGCTGCATCCTCCGGGACTCCCTGACTTTCACAGATAACGACTAAGTCGTCGCCACACACGAGCATGGTGCAGTCCTGGAGCCCAGCGGCTCGACAGGCTGCTTTGGCCTTGATGTAGCAGGTGAGGGTGTTACCACAGCTGGTCGTCAGTACGCCGCTCGCGCGGCACCTGCGATAGCCGCAGTTTTCCCCCCTTGAATTAGTAAGAGGGCCCCCGACATAGAGCCTCTCGGTGAGGGACTTGATGGCCACGCGGGCTTGGGGTCCAGGTCACAACATTGGTAAATTGCCTCCTCTGTACGGATATCGCTCTCAGTGACTGTGGAGTCAAAGCAGCGGGTATCATACGA
  +
  """~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"""
