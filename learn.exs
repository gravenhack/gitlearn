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
# salaire = IO.gets("Quel est votre revenu mensuel") |> String.trim()

# defmodule Impotpercent do
#   def impotcalculate(salaire) when is_binary(salaire) do
#     impotcalculate(Integer.parse(salaire))
#   end

#   def impotcalculate({salaire, _}) do
#     impotcalculate(salaire)
#   end

#   def impotcalculate(salaire) when is_integer(salaire) and salaire < 10000 do
#     "vous ne payez rien comme impôt"
#   end

#   def impotcalculate(salaire) when is_integer(salaire) and salaire > 10000 and salaire < 30000 do
#     "votre impôt est de 10 pourcent"
#   end

#   def impotcalculate(salaire)
#       when is_integer(salaire) and salaire > 30000 and salaire < 100_000 do
#     "votre impôt est de 20 pourcent"
#   end

#   def impotcalculate(salaire) when is_integer(salaire) and salaire > 100_000 do
#     "votre impôt est de 30 pourcent"
#   end

#   def impotcalculate(:error) do
#     "Entrée invalide"
#   end
# end

# IO.puts(Impotpercent.impotcalculate(salaire))
