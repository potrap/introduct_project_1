defmodule MySuperAppWeb.HelloHTML do
    use MySuperAppWeb, :html


    def hello(assigns) do
      ~H"""
  <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Expanded Webpage</title>
<style>
    /* CSS Code */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }

    header {
        background-color: #333;
        color: #fff;
        padding: 20px;
        text-align: center;
    }

    nav {
        background-color: #444;
        color: #fff;
        padding: 10px 20px;
        text-align: center;
    }

    nav a {
        color: #fff;
        text-decoration: none;
        margin: 0 10px;
    }

    nav a:hover {
        text-decoration: underline;
    }

    main {
        padding: 20px;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }

    article {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        flex-basis: calc(50% - 40px);
        margin-bottom: 20px;
    }

    footer {
        background-color: #333;
        color: #fff;
        padding: 20px;
        text-align: center;
        clear: both;
    }
</style>
</head>
<body>

<header>
    <h1>Welcome to My Expanded Webpage</h1>
</header>

<nav>
    <a href="/">Home</a>
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#">Portfolio</a>
    <a href="#">Contact</a>
</nav>

<main>
    <article>
        <h2>About Us</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec felis auctor, aliquet urna et, tristique libero.</p>
    </article>
    <article>
        <h2>Services</h2>
        <p>Our services include web design, graphic design, digital marketing, and more. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </article>
    <article>
        <h2>Portfolio</h2>
        <p>Check out some of our latest projects. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </article>
    <article>
        <h2>Contact Us</h2>
        <p>Get in touch with us to discuss your project needs. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </article>
</main>

<footer>
    <p>&copy; 2024 Expanded Webpage. All Rights Reserved.</p>
</footer>

</body>
</html>
      """
    end
  end
