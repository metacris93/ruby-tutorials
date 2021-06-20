def without_threads
	p "Sin Hilos"
	start = Time.now
	3.times {|i| http_call(i)}
	p "Total time #{Time.now - start} segundos"
	p "---------------------------------------"
end

def with_threads
	p "Con hilos"
	start = Time.now
	threads = 3.times.map {|i| Thread.new { http_call(i) }}
	threads.map(&:join)
	p "Total time #{Time.now - start} segundos"
	p "---------------------------------------"
end

def http_call(n)
	p "Simulando HTTP call #{n}"
	sleep(1)
end

without_threads
with_threads