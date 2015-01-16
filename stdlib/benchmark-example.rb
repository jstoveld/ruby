require 'benchmark'

repititions = 1000000

Benchmark.bm(7) do |x|
	x.report 'String' do
		repititions.times do
			options = { 'hello' => 'world' }
		end
	end


	x.report 'Symbol' do
		repititions.times do
			options = { hello: :world }
		end
	end
end

