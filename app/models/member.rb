class Member < ActiveRecord::Base
 has_many :subscriptions
 has_many :loans
 has_many :shares
 has_many :fixed_deposites
 before_save :age, :no_of_years_of_service, :first_nominee_age , :second_nominee_age ,:retirement



def age 
    
   now = Time.now
   @year = now.year - dob.year - (dob.to_time.change(:year => now.year) > now ? 1 : 0)
      
   @month = Date.today.month - dob.month 
   if(Date.today.month < dob.month)
   @months = 12 + @month 
   elsif(Date.today.month > dob.month)
   @months = 12 - @month 
   end  
   
   @day = Date.today.day - dob.day
   if(Date.today.day < dob.day)
   day = 31 - dob.day
   end
      
   age_calc=@year.to_s+'-'+@months.to_s+'-'+@day.to_s
   write_attribute ('age',age_calc)
   
end

def no_of_years_of_service 
    now = Time.now
    @year = now.year - doj_npc.year - (doj_npc.to_time.change(:year => now.year) > now ? 1 : 0)
  
    
   @month = Date.today.month - doj_npc.month 
   if(Date.today.month < doj_npc.month)
   @months = 12 + @month 
   elsif(Date.today.month > doj_npc.month)
   @months = 12 - @month 
   end  
   @day = Date.today.day - doj_npc.day
   if(Date.today.day < doj_npc.day)
   day = 31 - doj_npc.day
   end
   
   no_of_years_of_service_calc=@year.to_s+'-'+@months.to_s+'-'+@day.to_s
  
   write_attribute ('no_of_years_of_service',no_of_years_of_service_calc)
     
end

def first_nominee_age 
    
   now = Time.now
   @year = now.year - first_nominee_dob.year - (first_nominee_dob.to_time.change(:year => now.year) > now ? 1 : 0)
      
   @month = Date.today.month - first_nominee_dob.month 
   if(Date.today.month < first_nominee_dob.month)
   @months = 12 + @month 
   elsif(Date.today.month > first_nominee_dob.month)
   @months = 12 - @month 
   end  
   
   @day = Date.today.day - first_nominee_dob.day
   if(Date.today.day < first_nominee_dob.day)
   day = 31 - first_nominee_dob.day
   end
     
   
   first_nominee_age_calc=@year.to_s+'-'+@months.to_s+'-'+@day.to_s
   
   write_attribute ('first_nominee_age',first_nominee_age_calc)


end


def second_nominee_age 
    
   now = Time.now
   @year = now.year - second_nominee_dob.year - (second_nominee_dob.to_time.change(:year => now.year) > now ? 1 : 0)
      
   @month = Date.today.month - second_nominee_dob.month 
   if(Date.today.month < second_nominee_dob.month)
   @months = 12 + @month 
   elsif(Date.today.month > second_nominee_dob.month)
   @months = 12 - @month 
   end  
   
   @day = Date.today.day - second_nominee_dob.day
   if(Date.today.day < second_nominee_dob.day)
   day = 31 - second_nominee_dob.day
   end
     
   
   second_nominee_age_calc=@year.to_s+'-'+@months.to_s+'-'+@day.to_s
   
   write_attribute ('second_nominee_age',second_nominee_age_calc)
end

def retirement
 @retirement_date = dob.years_since(60)
 retirement_date_calc = @retirement_date
 write_attribute ('date_of_retirement',retirement_date_calc)

 
   
  
end
end
