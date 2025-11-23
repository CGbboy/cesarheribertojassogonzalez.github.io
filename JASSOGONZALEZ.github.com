<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Currículum - Cesar Heriberto Jasso Gonzalez</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: #f2f2f2;
        }

        header {
            background: #1a73e8;
            color: white;
            padding: 20px;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: center;
            background: #ffffff;
            padding: 10px;
            gap: 15px;
            flex-wrap: wrap;
        }

        nav button {
            background: #1a73e8;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        nav button:hover {
            background: #1558b0;
        }

        section {
            display: none;
            padding: 20px;
            margin: 20px;
            background: white;
            border-radius: 10px;
        }

        .active {
            display: block;
        }
    </style>

    <script>
        function showSection(id) {
            document.querySelectorAll("section").forEach(sec => sec.classList.remove("active"));
            document.getElementById(id).classList.add("active");
        }
    </script>
</head>

<body>

<header>
    <h1>Currículum Vitae</h1>
    <h2>Cesar Heriberto Jasso Gonzalez</h2>
</header>

<nav>
    <button onclick="showSection('datos')">Datos personales</button>
    <button onclick="showSection('formacion')">Formación académica</button>
    <button onclick="showSection('experiencia')">Experiencia laboral</button>
    <button onclick="showSection('extra')">Formaciones adicionales</button>
    <button onclick="showSection('sobre')">Sobre mí</button>
</nav>

<!-- DATOS PERSONALES -->
<section id="datos" class="active">
    <h2>Datos personales</h2>
    <p><strong>Nombre:</strong> Cesar Heriberto Jasso Gonzalez</p>
    <p><strong>Edad:</strong> 19 años</p>
    <p><strong>Ciudad:</strong> Ciudad del Carmen, Campeche</p>
    <p><strong>Teléfono:</strong> 9381334770</p>
    <p><strong>Correo:</strong> cesar_h.j_gonzalez@outlook.com</p>
</section>

<!-- FORMACIÓN ACADÉMICA -->
<section id="formacion">
    <h2>Formación académica</h2>
    <ul>
        <li><strong>Primaria:</strong> Rafael Ramírez — 6 años</li>
        <li><strong>Secundaria:</strong> Secundaria Técnica No. 40 — 3 años</li>
        <li><strong>Preparatoria:</strong> CETIS 20 — 3 años</li>
        <li><strong>Universidad:</strong> UNACAR — Ingeniería Mecánica (actualmente cursando)</li>
    </ul>
</section>

<!-- EXPERIENCIA LABORAL -->
<section id="experiencia">
    <h2>Experiencia laboral</h2>
    <p>No cuento con experiencia laboral por el momento.</p>
</section>

<!-- FORMACIONES ADICIONALES -->
<section id="extra">
    <h2>Formaciones adicionales</h2>
    <p><strong>Curso de electricidad — CECATI</strong></p>
    <ul>
        <li>Duración: 6 meses</li>
        <li>Electricidad básica</li>
        <li>Media y alta tensión</li>
        <li>110V y 220V</li>
    </ul>
</section>

<!-- SOBRE MÍ -->
<section id="sobre">
    <h2>Sobre mí</h2>
    <p>Soy un joven responsable, dedicado y con ganas de seguir aprendiendo en el área de la ingeniería mecánica. Me gusta trabajar en equipo, resolver problemas y adquirir nuevas habilidades técnicas.</p>
</section>

</body>
</html>
