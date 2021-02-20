print "Kaçtane process olacağını giriniz"
n=gets.to_i
print "Q(quantum)giriniz"
q=gets.to_i
print "Sıra ile istediğiniz sayıda process giriniz(0 ve negatifler process olarak sayılmaz): \n"
i=0
b=0
a=[]
dizibekleme=[]
until i==n do
  b=gets.to_i
  if b>0
  a[i]=b
  dizibekleme[i]=0
  i+=1
  end 
end
d=0
i=0

flg=1

while flg==1 do#aşşağıdaki bütünk kodu kapsaması gerek

   i2=0
    until i2==n do#eğer birtanesi bile q dan büyükse döbgü devam eder
        if a[i2]>q
           flg=1
            break#until döngüsü kırılıacak aksi takdirde 
      else      #bir tane bile qdan büyük varsa çıkarma  işlemine devam edecek. sadece büyük olanları  
        flg=0
      end   
     i2+=1
   end

  if flg==0# bütün prccler qdan küçük olunca döngü kırılır #(while döngüsü kırılır)       
   break
  end

    j=0
  until j==n  do
 #print a[i].to_s
      if a[j]>q
         a[j]-=q 
              k=0
              print (j+1).to_s
              print ". process son hali="+a[j].to_s+"\n"
                until k==n do   
                  if k!=j 
                    if a[k]!=0#kendisi ve biten procesler haricindekilerin bekleme süresini arttırıyo
                    dizibekleme[k]+=q
                    print (k+1).to_s
                    print ". process bekleme süresi="+dizibekleme[k].to_s+"\n"
                    end
                  end
                   k+=1 
                end 
         end
   j+=1
  end
end
print "******************************* \n"
until i==n do#hepsi qya eşit yada küçük olduktan sonraki süreç
  print (i+1).to_s
  print ". process son hali(0lanıp ekleneiyo waiting time="+a[i].to_s+"\n"
  if a[i]!=0
    k=0
      until k==n do
        if k!=i
          if a[k]!=0
            dizibekleme[k]+=a[i]
  print (k+1).to_s
  print ". process bekleme süresi="+dizibekleme[k].to_s+"\n"
          end
        end
      k+=1
      end

  end
  a[i]=0
i+=1
end
print "******************************** \n"
fa=0
until fa==n do
  print (fa+1).to_s
  print ". process son hali="+a[fa].to_s+"\n"
  print (fa+1).to_s
  print ". process bekleme süresi="+dizibekleme[fa].to_s+"\n"
  fa+=1
end