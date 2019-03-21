
class Kund
    attr_accessor :namn, :belopp, :belopp2, :peng, :peng, :peng1, :peng2, :saldo
    
    def initialize(namn, saldo)
       @namn = namn
       @saldo = saldo
       
       puts " "
       puts " "
       puts " "
       puts"#### Kund: #{@namn} #### "
       puts"#### Ingående saldo: #{@saldo} ####  "
       puts " "
       puts " "
       puts " "
      
    end

    def insattning=(belopp)
        @belopp = belopp
        @saldo += @belopp
       
        puts " "
        puts " "
        puts "**********************************"
        puts "**** Nytt saldo: #{@saldo} KR ****"
        puts "**********************************"
    
      
    end

    def uttag=(belopp)
        @belopp = belopp 
        @saldo -= @belopp

        puts " "
        puts " "
        puts "********************************"
        puts "**** Nytt saldo: #{@saldo} ****"
        puts "********************************"

    end

    def saldo()

        puts " "
        puts " "
        puts "********************************"
        puts "**** Nytt saldo: #{@saldo} ****"
        puts "********************************"
    end
end

class Service_txt
    
    attr_accessor :line_number, :namn
        
    def initialize(line_number, namn)
        @line_number = line_number
        @namn = namn
        
        line_namn = @namn.length 
        line_count = ((line_number-line_namn)/2)-7 #Beräknar antal tecken för sidorna
        lines_full = ("-")*@line_number #Hela bredden
        
        if line_namn.even? == true   #Jämnar ut udda och jämna namn vs. linjerna
            line_side_right = ("-")*line_count  #Sidorna
        elsif 
            linecount_odd = line_count - 1
            line_side_right = ("-")*linecount_odd #Sidorna
        end
        
        line_side_left = ("-")*line_count #Sidorna
         
        puts lines_full
        puts "#{line_side_left} Välj tjänst: #{@namn} #{line_side_right}"
        puts lines_full
       
    end
end




        puts " "
        puts " "
        puts " "
        puts "#########################"
        puts "##### VÄLKOMMEN TILL ####"
        puts "##### STEFAN-BANKEN #####"
        puts "#########################"
        puts " "
        puts "Skriv in ditt för- och efternamn"
        namn = gets.chomp
        StefanBanken = Kund.new(namn, 23000)
       
    loop do
      
       linjer = Service_txt.new(75,namn)
      
        puts " "
        puts " 1. Sätt in en slant"
        puts " 2. Ta ut en slant"
        puts " 3. Saldo"
        puts " 4. Logga ut"
        puts " "
        
        tjanst = gets.chomp
    
        
        if tjanst == "1"  
        puts " Sätt in denna summa:"
        bank_in = gets.chomp.to_i
        Saldo = StefanBanken.insattning=(bank_in)
        
        elsif tjanst == "2"
        puts " Ta ut denna summa:"
        bank_ut = gets.chomp.to_i
        Saldo = StefanBanken.uttag=(bank_ut)
        
        elsif tjanst == "3" 
        bank_saldo = StefanBanken.saldo()
        
        elsif tjanst == "4" 
            break
        end

    end




puts "Slut i rutan, bankrutt"

