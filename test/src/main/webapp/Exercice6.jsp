<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Équation du second degré</title>
</head>
<body>
    <%
        // Affichage d'une phrase d'introduction
        out.println("<h2>Résolution de l'équation du second degré</h2>");

        // Résolution de l'équation du second degré
        String valeurA_str = request.getParameter("valeurA");
        String valeurB_str = request.getParameter("valeurB");
        String valeurC_str = request.getParameter("valeurC");

        if (valeurA_str != null && valeurB_str != null && valeurC_str != null) {
            double valeurA = Double.parseDouble(valeurA_str);
            double valeurB = Double.parseDouble(valeurB_str);
            double valeurC = Double.parseDouble(valeurC_str);

            double delta = valeurB * valeurB - 4 * valeurA * valeurC;

            if (delta > 0) {
                double x1 = (-valeurB + Math.sqrt(delta)) / (2 * valeurA);
                double x2 = (-valeurB - Math.sqrt(delta)) / (2 * valeurA);
                out.println("Les solutions de l'équation sont x1 = " + x1 + " et x2 = " + x2 + ".");
            } else if (delta == 0) {
                double x = -valeurB / (2 * valeurA);
                out.println("L'équation a une solution double : x = " + x + ".");
            } else {
                out.println("L'équation n'a pas de solution réelle.");
            }
        }
    %>

    <form action="exercice6.jsp" method="post">
        <label for="valeurA">A :</label>
        <input type="number" name="valeurA" required>
        <br>
        <label for="valeurB">B :</label>
        <input type="number" name="valeurB" required>
        <br>
        <label for="valeurC">C :</label>
        <input type="number" name="valeurC" required>
        <br>
        <input type="submit" value="Résoudre">
    </form>

</body>
</html>
