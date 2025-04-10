# Simuler des données : croissance de deux plantes sur 12 mois
mois <- 1:12
plante_A <- c(2, 4, 6, 8, 10, 12, 13, 14, 14.5, 14.8, 15, 15)
plante_B <- c(1, 3, 5, 7, 9, 11, 12, 13.5, 14.2, 14.6, 14.9, 15.2)

# Créer le plot de base pour la plante A
plot(mois, plante_A,
     type = "o",                          # lignes + points
     col = "forestgreen",                # couleur de la courbe
     pch = 16,                            # type de point
     lwd = 2,                             # épaisseur de ligne
     ylim = c(0, 16),                     # limite de l’axe y
     xaxt = "n",                          # désactiver l’axe x temporairement
     xlab = "Mois", ylab = "Hauteur (cm)",
     main = "Croissance de deux plantes sur un an")

# Ajouter les mois en abscisse
axis(1, at = mois, labels = month.abb)

# Ajouter la courbe pour la plante B
lines(mois, plante_B, type = "o", col = "darkorange", pch = 17, lwd = 2)

# Ajouter une légende
legend("bottomright",
       legend = c("Plante A", "Plante B"),
       col = c("forestgreen", "darkorange"),
       pch = c(16, 17),
       lty = 1,
       lwd = 2,
       bg = "white")

# Ajouter une grille
grid(nx = NA, ny = NULL, col = "gray90", lty = "dotted")

