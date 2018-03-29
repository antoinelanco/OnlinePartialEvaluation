Definition Fonction :


Fonction : run_1004597815(ls,rls,token){
   Switch((HD,ls))(
      Case('b') -> run_1004597815((TL,ls),ls,token)
      Default -> 'B')
}


Fonction : run_337855664(last,ls,rls,token){
   Switch((HD,ls))(
      Case('b') -> run_1004597815((TL,ls),ls,token)
      Default -> 'B')
}


Fonction : run_534456434(last,ls,rls,token){
   Switch((HD,ls))(
      Case('a') -> 'A'
      Case('b') -> run_337855664(last,(TL,ls),rls,token)
      Default -> Exception)
}

Main :
   run_534456434(last,ls,rls,token)
