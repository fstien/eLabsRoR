Rails.application.routes.draw do


  root 'general#home'

  get 'cobbdouglas' => 'cobbdouglas#home'
  

  ######### SOLOW #########

  get 'solow' => 'solow#home'

  # The refresh button that returns the text
  get 'solow-refresh' => 'solow#refresh'

  # The Increses and Decreases in the main variables
  get 'solow-alpha-increase' => 'solow#alphaincrease'
  get 'solow-alpha-decrease' => 'solow#alphadecrease'
    
  get 'solow-savings-increase' => 'solow#savingsincrease'
  get 'solow-savings-decrease' => 'solow#savingsdecrease'
 
  get 'solow-dep-increase' => 'solow#depincrease'
  get 'solow-dep-decrease' => 'solow#depdecrease'

  get 'solow-tech-increase' => 'solow#techincrease'
  get 'solow-tech-decrease' => 'solow#techdecrease'
  

  # The plotted functions
  get 'solow-savingsfunction' => 'solow#savingsfunction'
  get 'solow-depfunction' => 'solow#depfunction'
  get 'solow-techfunction' => 'solow#techfunction'

  # The input variables
  get 'solow-alpha' => 'solow#alpha'
  get 'solow-dep' => 'solow#dep'
  get 'solow-savings' => 'solow#savings'
  get 'solow-tech' => 'solow#tech'

  # The output variables
  get 'solow-k' => 'solow#k'
  get 'solow-k2' => 'solow#k'
  get 'solow-y' => 'solow#y'
  get 'solow-c' => 'solow#c'
  get 'solow-i' => 'solow#i'
  get 'solow-MPK' => 'solow#MPK'
  get 'solow-K' => 'solow#K'
  get 'solow-Y' => 'solow#Y'


end
