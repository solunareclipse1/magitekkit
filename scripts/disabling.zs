#priority 500000
//regex removal of random things recipes, minus specific ones that need to exist
//thank you based mineral
recipes.removeByRegex("^(?!.*(:diaphanouschange)|.*(:spectreanchorcombine)|.*(:diaphanousinvert)|.*(:spectreplank))(randomthings:.+)$");