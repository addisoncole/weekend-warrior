def find_hamming(strand1, strand2)

if strand1.length != strand2.length
  raise ArgumentError, "DNA strands must match in length (Strand 1 count:#{strand1.length} != Strand 2 count: #{strand2.length})"
end

hamming_count = 0

strand1_arr = strand1.scan /\w/
strand2_arr = strand2.scan /\w/

strand1_arr.each_with_index do |letter, index|

  if letter != strand2_arr[index]
    hamming_count += 1
  end
end
return hamming_count
end
