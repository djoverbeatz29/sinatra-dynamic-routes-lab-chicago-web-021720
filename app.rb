require_relative 'config/environment'

class App < Sinatra::Base

    get('/reversename/:name') {
        @name = params[:name]
        "#{@name.reverse}"
    }

    get('/square/:number') {
        @number = params[:number].to_i
        "#{@number ** 2}"
    }

    get('/say/:number/:phrase') {
        @number = params[:number].to_i
        @phrase = params[:phrase]
        @frases = []
        @number.times { @frases << @phrase }
        @frases.join("\n")
    }

    get('/say/:word1/:word2/:word3/:word4/:word5') {
        "#{@params[:word1]} #{@params[:word2]} #{@params[:word3]} #{@params[:word4]} #{@params[:word5]}."
    }

    get('/:operation/:number1/:number2') {
        @n1 = params[:number1].to_i
        @n2 = params[:number2].to_i
        @op = params[:operation]
        case @op
        when "add"
            "#{@n1 + @n2}"
        when "subtract"
            "#{@n1 - @n2}"
        when "multiply"
            "#{@n1 * @n2}"
        when "divide"
            "#{@n1 / @n2}"
        end
    }

end