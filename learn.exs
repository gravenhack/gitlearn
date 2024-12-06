# # Demande à l'utilisateur son âge et nettoie l'entrée pour supprimer espaces/sauts de ligne
# age = IO.gets("what is your age ") |> String.trim()

# # Déclare un module Voter pour regrouper les fonctions liées à l'éligibilité de vote
# defmodule Voter do
#   # Vérifie si l'âge est une chaîne, puis tente de le convertir en entier
#   def eligibility(age) when is_binary(age) do
#     # Appelle eligibility avec le résultat de Integer.parse/1
#     eligibility(Integer.parse(age))
#   end

#   # Gère le tuple retourné par Integer.parse/1 et appelle eligibility avec l'entier
#   def eligibility({age, _}) do
#     # Appelle eligibility avec l'entier extrait
#     eligibility(age)
#   end

#   # Clause pour les âges inférieurs à 18 : utilisateur ne peut pas voter
#   def eligibility(age) when is_integer(age) and age < 18 do
#     # Retourne un message d'inéligibilité
#     "You can't vote yet"
#   end

#   # Clause pour les âges compris entre 18 et 24 : utilisateur peut voter
#   def eligibility(age) when is_integer(age) and age < 25 do
#     # Retourne un message d'éligibilité au vote
#     "You can vote"
#   end

#   # Gère les entrées invalides (par exemple, non-nombres)
#   def eligibility(:error) do
#     # Retourne un message d'erreur pour les entrées non valides
#     "Invalid number"
#   end

#   # Clause par défaut pour les âges >= 25
#   def eligibility(_age) do
#     # Message pour les utilisateurs pleinement éligibles
#     "You can vote and you can run for office"
#   end
# end

# Appelle la fonction eligibility et affiche le résultat
# Affiche le message d'éligibilité basé sur l'entrée
# IO.puts(Voter.eligibility(age))

# Exercice sur les fonctions polymorphs et sur la condition case
# salaire = IO.gets("Quel est votre revenu mensuel")

# defmodule Impotpercent do
# @moduledoc """
# Module pour calculer le pourcentage d'impôt basé sur le revenu mensuel.
# """
# @doc """
# Calcule le pourcentage d'impôt en fonction du revenu donné.
#
# ## Arguments
# - `salaire` : Revenu mensuel. Il peut être une chaîne de caractères (qui sera convertie en entier) ou un entier directement.
#
# ## Renvoie
# - Un message indiquant le pourcentage d'impôt à payer ou une erreur si l'entrée est invalide.
#
# ## Exemples
#     iex> Impotpercent.impotcalculate("20000")
#     "votre impôt est de 10 pourcent"
#
#     iex> Impotpercent.impotcalculate(5000)
#     "vous ne payez rien comme impôt"
# """
#   def impotcalculate(salaire) when is_binary(salaire) or is_integer(salaire) do
#     do_impotcalculate(salaire)
#   end

#   def impotcalculate(_salaire) do
#     "Entrée invalide"
#   end

#   defp do_impotcalculate(salaire) when is_binary(salaire) do
#     do_impotcalculate(Integer.parse(salaire))
#   end

#   defp do_impotcalculate({salaire, _}) do
#     do_impotcalculate(salaire)
#   end

#   defp do_impotcalculate(salaire) when is_integer(salaire) and salaire < 10000 do
#     "vous ne payez rien comme impôt"
#   end

#   defp do_impotcalculate(salaire)
#        when is_integer(salaire) and salaire > 10000 and salaire < 30000 do
#     "votre impôt est de 10 pourcent"
#   end

#   defp do_impotcalculate(salaire)
#        when is_integer(salaire) and salaire > 30000 and salaire < 100_000 do
#     "votre impôt est de 20 pourcent"
#   end

#   defp do_impotcalculate(salaire) when is_integer(salaire) and salaire > 100_000 do
#     "votre impôt est de 30 pourcent"
#   end

#   defp do_impotcalculate(:error) do
#     "Entrée invalide"
#   end
# end

# IO.puts(Impotpercent.impotcalculate(salaire))

# Fonctions anonymes
# les fonctions anonyles sont des fonctions assoiés directemment à des variables et qu'on appelle avec la synthaxe
# functionname.(param)
# sum = fn a, b -> a + b end

# IO.puts(sum.(12, 15))

# additionner les élémznts d'une liste avec les fonctions anonymes
# addition = fn [a, b, c, d, e, v] -> a + b + c + d + e + v end
# IO.puts(addition.([12.01, 13, 21, 14, 11.05, 558]))

# filtrer les nombres pairs   la fonction filter de enum renvoi uniquelents les valuers d'une liste dont la fontion renvoie une valeur vrai

# liste = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# filter = fn list -> Enum.filter(list, fn x -> rem(x, 2) == 0 end) end

# resultat = filter.(liste)

# IO.inspect(resultat)

# fontion pour la somme des éléments d'une liste

# add = fn list -> Enum.reduce(list, 0, fn x, acc -> acc + x end) end

# resultat = add.(liste)

# IO.inspect(resultat)

# les clauses de fonctions avec la notion de fonctions anonymes
# print_fizzbuzz = fn
#   0, 0, _ -> "FizzBuzz"
#   0, _, _ -> "Fizz"
#   _, 0, _ -> "Buzz"
#   _, _, n -> n
# end

# resultat = print_fizzbuzz.(4, 0, 2)
# IO.inspect(resultat)

# secondresult = fn n -> print_fizzbuzz.(rem(n, 2), rem(n, 5), n) end

# IO.inspect(secondresult.(11))
