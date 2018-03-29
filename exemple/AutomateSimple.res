Definition Fonction :


Fonction : run_104958863(last,ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'A')
   }Else{
      run_237547002(last,ls,rls,(+,token,'A'))
   }
}


Fonction : run_20208816(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'B')
   }Else{
      Switch((HD,ls))(
         Case('b') -> run_20208816((TL,ls),ls,token)
         Default -> run_863632120(ls,rls,(+,token,'B')))
   }
}


Fonction : run_237547002(last,ls,rls,token){
   If((==,(Length,ls),0)){
      Exception
   }Else{
      Switch((HD,ls))(
         Case('a') -> run_104958863(last,(TL,ls),rls,token)
         Case('b') -> run_663179995(last,(TL,ls),rls,token)
         Default -> Exception)
   }
}


Fonction : run_282405567(ls,rls,token){
   If((==,(Length,ls),0)){
      Exception
   }Else{
      Switch((HD,ls))(
         Case('a') -> run_640551539((TL,ls),rls,token)
         Case('b') -> run_712628396((TL,ls),rls,token)
         Default -> Exception)
   }
}


Fonction : run_395873244(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'A')
   }Else{
      run_863632120(ls,rls,(+,token,'A'))
   }
}


Fonction : run_640551539(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'A')
   }Else{
      run_282405567(ls,rls,(+,token,'A'))
   }
}


Fonction : run_663179995(last,ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'B')
   }Else{
      Switch((HD,ls))(
         Case('b') -> run_20208816((TL,ls),ls,token)
         Default -> run_237547002(last,ls,rls,(+,token,'B')))
   }
}


Fonction : run_712628396(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'B')
   }Else{
      Switch((HD,ls))(
         Case('b') -> run_20208816((TL,ls),ls,token)
         Default -> run_282405567(ls,rls,(+,token,'B')))
   }
}


Fonction : run_863632120(ls,rls,token){
   If((==,(Length,ls),0)){
      run_282405567(rls,rls,(+,token,'B'))
   }Else{
      Switch((HD,ls))(
         Case('a') -> run_395873244((TL,ls),rls,token)
         Case('b') -> run_20208816((TL,ls),rls,token)
         Default -> run_282405567(rls,rls,(+,token,'B')))
   }
}

Main :
   run_237547002(last,ls,rls,token)
