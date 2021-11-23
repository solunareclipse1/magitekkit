#priority 500000
////this file is for mass removal of recipes, mostly to disable the items they output because i dont want them to exist

//regex removal of random things recipes, minus specific ones that need to exist
//thank you based mineral
recipes.removeByRegex("^(?!.*(:diaphanouschange)|.*(:spectreanchorcombine)|.*(:diaphanousinvert)|.*(:spectreplank))(randomthings:.+)$");