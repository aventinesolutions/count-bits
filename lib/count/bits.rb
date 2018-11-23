require "count/bits/version"

module Count
  module Bits
    CHUNKSIZE = 2048

    def perform(path)
      { '0' => 0, '1' => 0 }.tap do |stats|
        Pathname.new(path).open.each(nil, CHUNKSIZE) do |chunk|
          %w[0 1].each do |zero_or_one|
            stats[zero_or_one] = chunk.b.unpack('C*').reduce(stats[zero_or_one]) do |sum, i|
              sum + i.to_s(2).count(zero_or_one)
            end
          end
        end
      end
    end
  end
end
