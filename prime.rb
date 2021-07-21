# Add  code here!
def prime?(uncertain_prime)
    return false if uncertain_prime < 2 or !(uncertain_prime.is_a? Integer)
    sieve = (2..uncertain_prime).to_a
    loop do
        if uncertain_prime % sieve.first == 0
            return true if uncertain_prime == sieve.first
            return false
        else
            filter = sieve.first
            sieve.delete_if {|filtered_number| filtered_number % filter == 0}
        end
    end
end

# could have just used .any? and it would be simpler