require 'pry'
class Array
	def my_rotate(num=1)
		result = Array.new(self)
		if num >=1
			num.times do
				shifted = result.shift
				result.push(shifted)
			end
		else
			(num*-1).times do
				popped = result.pop
				result.unshift(popped)
			end
		end
		result.compact
	end

end
