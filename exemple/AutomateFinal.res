Definition Fonction :


Fonction : run_12030604(ls,rls,token){
   If((==,(Length,ls),0)){
      Exception
   }Else{
      Switch((HD,ls)):
         Case('a') -> run_992390515((TL,ls),rls,token)
         Case('b') -> run_56255003((TL,ls),rls,token)
         Default -> Exception
   }
}


Fonction : run_142607916(ls,rls,token){
   If((==,(Length,ls),0)){
      run_12030604(rls,rls,(+,token,'AB'))
   }Else{
      Switch((HD,ls)):
         Case('a') -> run_421428734((TL,ls),rls,token)
         Case('b') -> run_751715031((TL,ls),rls,token)
         Default -> run_12030604(rls,rls,(+,token,'AB'))
   }
}


Fonction : run_327182894(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'AB')
   }Else{
      Switch((HD,ls)):
         Case('b') -> run_536880144((TL,ls),ls,token)
         Default -> run_390919638(ls,rls,(+,token,'AB'))
   }
}


Fonction : run_340766731(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'B')
   }Else{
      run_390919638(ls,rls,(+,token,'B'))
   }
}


Fonction : run_390919638(ls,rls,token){
   If((==,(Length,ls),0)){
      Exception
   }Else{
      Switch((HD,ls)):
         Case('a') -> run_758733347((TL,ls),rls,token)
         Case('b') -> run_340766731((TL,ls),rls,token)
         Default -> Exception
   }
}


Fonction : run_421428734(ls,rls,token){
   If((==,(Length,ls),0)){
      run_12030604(rls,rls,(+,token,'AB'))
   }Else{
      Switch((HD,ls)):
         Case('b') -> run_959414350((TL,ls),rls,token)
         Default -> run_12030604(rls,rls,(+,token,'AB'))
   }
}


Fonction : run_536880144(ls,rls,token){
   If((==,(Length,ls),0)){
      run_12030604(rls,rls,(+,token,'AB'))
   }Else{
      Switch((HD,ls)):
         Case('c') -> run_914454734((TL,ls),rls,token)
         Default -> run_12030604(rls,rls,(+,token,'AB'))
   }
}


Fonction : run_56255003(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'B')
   }Else{
      run_12030604(ls,rls,(+,token,'B'))
   }
}


Fonction : run_751715031(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'B')
   }Else{
      run_142607916(ls,rls,(+,token,'B'))
   }
}


Fonction : run_758733347(ls,rls,token){
   If((==,(Length,ls),0)){
      Exception
   }Else{
      Switch((HD,ls)):
         Case('b') -> run_327182894((TL,ls),rls,token)
         Default -> Exception
   }
}


Fonction : run_914454734(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'ABBC')
   }Else{
      run_142607916(ls,rls,(+,token,'ABBC'))
   }
}


Fonction : run_923199527(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'AB')
   }Else{
      Switch((HD,ls)):
         Case('b') -> run_536880144((TL,ls),ls,token)
         Default -> run_12030604(ls,rls,(+,token,'AB'))
   }
}


Fonction : run_959414350(ls,rls,token){
   If((==,(Length,ls),0)){
      (+,token,'AB')
   }Else{
      Switch((HD,ls)):
         Case('b') -> run_536880144((TL,ls),ls,token)
         Default -> run_142607916(ls,rls,(+,token,'AB'))
   }
}


Fonction : run_992390515(ls,rls,token){
   If((==,(Length,ls),0)){
      Exception
   }Else{
      Switch((HD,ls)):
         Case('b') -> run_923199527((TL,ls),rls,token)
         Default -> Exception
   }
}

Main :
   run_390919638(ls,rls,token)
