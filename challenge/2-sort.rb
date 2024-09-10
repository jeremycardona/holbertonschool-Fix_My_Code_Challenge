###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not an integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # find the correct position to insert
    is_inserted = false
    i = 0
    l = result.size
    while i < l do
        if result[i] > i_arg
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
        i += 1
    end

    # append to the end if not inserted in the loop
    result << i_arg if !is_inserted
end

puts result

