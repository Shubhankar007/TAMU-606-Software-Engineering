#Shubhankar Goswami
#CSCE 606 HW2 Q2
class Numeric
    attr_accessor :base_currency
    @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
#checks whether the input currency key is available in the hash
#calculates the currency value in dollars
    def method_missing method_id
        singular_currency = method_id.to_s.gsub( /s$/, '')
        if @@currencies.has_key?(singular_currency)
            self * @@currencies[singular_currency]
        else
            super
        end
    end
#calculates the target currency value from dollars
    def in currency
        required_currency = currency.to_s.gsub( /s$/, '')
        if required_currency != 'dollar'
            self / @@currencies[required_currency]
        else
            self
        end
    end
end

#puts 5.dollars.in(:euros)
#puts 10.euros.in(:rupees)