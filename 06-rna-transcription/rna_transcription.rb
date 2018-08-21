def rna_transcription(dna_strand)
  rna_strand = String.new
  dna_parse = dna_strand.scan /\w/

  # check to see if it has RNA component, if does, change RNA to DNA
  if dna_parse.include? ("U")
    dna_parse.each do |letter|
      case
      when letter !~ /ACGTU/
        raise ArgumentError, "MUST be valid nucleotide (A,C,G,T,U)"
      when letter == "C"
        rna_strand += "G"
      when letter == "G"
        rna_strand += "C"
      when letter == "A"
        rna_strand += "T"
      when letter == "U"
        rna_strand += "A"
      end
    end
    # else no "U" nucleotide, treat as DNA
  else dna_parse.each do |letter|
    case
    when letter !~ /ACGTU/
      raise ArgumentError, "MUST be valid nucleotide (A,C,G,T,U)"
    when letter == "G"
      rna_strand += "C"
    when letter == "C"
      rna_strand += "G"
    when letter == "T"
      rna_strand += "A"
    when letter == "A"
      rna_strand += "U"
    end
  end
end
  return rna_strand
end
