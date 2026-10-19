
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DaYappinBear's Silly Website</title>

    <style>
     
body {
    margin: 0;
    background-color: #ED8F91;
    background-image: url("bg.png");
    background-repeat: repeat;
    font-family: "Ink Free", sans-serif;
    color: #24151B;
}


        /* TOP OF THE WEBSITE */

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 25px 35px;
        }

        .site-title h1 {
            font-size: 42px;
            font-weight: normal;
            margin: 0;
        }

        .site-title p {
            font-size: 24px;
            margin-top: 5px;
        }

        /* TOP WEBSITE LINKS */

        .top-nav {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .top-nav a {
            color: #24151B;
            text-decoration: none;
            font-size: 24px;
            border: 4px solid white;
            border-radius: 40% 45% 38% 48%;
            padding: 12px 18px;
            display: inline-block;
        }

        .top-nav a:hover {
            background-color: white;
        }

        /* MAIN LAYOUT */

        main {
            display: grid;
            grid-template-columns: 200px minmax(0, 2fr) minmax(0, 1fr);
            gap: 25px;
            padding: 30px 35px;
            align-items: start;
        }

        section {
            scroll-margin-top: 20px;
        }

        h2 {
            font-size: 30px;
            font-weight: normal;
        }

        p {
            font-size: 22px;
            line-height: 1.5;
        }

        /* FOUR LITTLE HAND-DRAWN BUTTONS */

        .little-buttons {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 14px;
            align-content: start;
            padding-top: 15px;
        }

        .sketch-button {
            min-height: 100px;
            padding: 8px;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            justify-content: center;

            color: #24151B;
            font-family: "Ink Free", sans-serif;
            font-size: 19px;
            text-align: center;
            text-decoration: none;

            border: 5px solid white;
            background: transparent;
            border-radius: 25% 14% 22% 17%;
            transform: rotate(-2deg);
        }

        .sketch-button:nth-child(2) {
            transform: rotate(2deg);
            border-radius: 15% 25% 16% 22%;
        }

        .sketch-button:nth-child(3) {
            transform: rotate(1deg);
            border-radius: 18% 22% 14% 27%;
        }

        .sketch-button:nth-child(4) {
            transform: rotate(-2deg);
            border-radius: 24% 16% 27% 18%;
        }

        .sketch-button:hover {
            background-color: rgba(255, 255, 255, 0.25);
            transform: rotate(0deg) scale(1.03);
        }

        /* LEFT SIDE: WRITING, ART, BOOKS AND SPOILERS */

        .content {
            min-width: 0;
        }

        .intro {
            margin-bottom: 35px;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 18px;
            margin-top: 20px;
        }

        /* IMAGE PLACEHOLDERS */

        .display {
            min-height: 145px;
            padding: 12px;
            box-sizing: border-box;
            border: 4px solid white;
            border-radius: 12px;
            color: #24151B;
            text-decoration: none;
            font-size: 23px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow-wrap: anywhere;
        }

        .display:hover {
            background-color: rgba(255, 255, 255, 0.25);
        }

        .book {
            min-height: 190px;
            border-radius: 8px 18px 12px 5px;
        }

        .upcoming {
            min-height: 110px;
            border-radius: 20px 8px 18px 12px;
        }

        /* RIGHT SIDE: DRAWING SPACE */

        .drawing-area {
            min-height: 500px;
            padding: 20px;
            box-sizing: border-box;
            border: 4px solid white;
            border-radius: 45% 12% 35% 10%;
            text-align: center;
            font-size: 23px;
        }

        /* WAVY DIVIDER BETWEEN CONTENT AND DRAWING */

        .drawing-area {
            border-left-style: dashed;
        }

        /* ABOUT SECTION */

        #about {
            padding: 25px 35px;
        }

        /* MOBILE LAYOUT */

        @media (max-width: 950px) {
            main {
                grid-template-columns: 1fr 2fr;
                padding: 20px;
            }

            .little-buttons {
                grid-column: 1 / -1;
                grid-template-columns: repeat(4, minmax(0, 1fr));
                order: -1;
            }

            .sketch-button {
                min-height: 85px;
                font-size: 18px;
            }

            .drawing-area {
                min-height: 280px;
            }

            #about {
                padding: 20px;
            }
        }

        @media (max-width: 600px) {
            header {
                padding: 20px;
            }

            .site-title h1 {
                font-size: 32px;
            }

            main {
                grid-template-columns: 1fr;
            }

            .little-buttons {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .gallery {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 10px;
            }

            .drawing-area {
                min-height: 250px;
            }

            #about {
                padding: 20px;
            }
        }
    </style>
</head>

<body>

    <!-- WEBSITE HEADER -->

    <header>
        <div class="site-title">
            <h1>DaYappinBear.com</h1>
            <p>Stuff about me :D</p>
        </div>

        <nav class="top-nav">
            <a href="https://medium.com/@gauribgurjar"
               target="_blank"
               rel="noopener noreferrer">Medium.com</a>

            <a href="https://minefun.io/"
               target="_blank"
               rel="noopener noreferrer">Minefun.io</a>
        </nav>
    </header>

    <!-- MAIN WEBSITE CONTENT -->

    <main>

        <!-- FOUR LITTLE NAVIGATION BUTTONS -->

        <nav class="little-buttons" aria-label="Page sections">
            <a href="#art" class="sketch-button">
                My Art<br>[Click]
            </a>

            <a href="#books" class="sketch-button">
                My Books<br>[Click]
            </a>

            <a href="#spoilers" class="sketch-button">
                Spoiler Warning!<br>[Click]
            </a>

            <a href="#about" class="sketch-button">
                About<br>[Click]
            </a>
        </nav>

        <!-- MAIN TEXT AND GALLERIES -->

        <div class="content">

            <section class="intro">
                <h2>Hi, this is DaYappinBear...</h2>

                <p>You have probably not heard about me, but you can call me Bear :D</p>
            </section>

            <!-- ART GALLERY: 12 SPACES -->

            <section id="art">
                <h2>My Art</h2>

                <p>Here I will show the silly pictures I create using MSPaint and a mouse.</p>

                <div class="gallery">
                    <div class="display">Drawing 1</div>
                    <div class="display">Drawing 2</div>
                    <div class="display">Drawing 3</div>
                    <div class="display">Drawing 4</div>
                    <div class="display">Drawing 5</div>
                    <div class="display">Drawing 6</div>
                    <div class="display">Drawing 7</div>
                    <div class="display">Drawing 8</div>
                    <div class="display">Drawing 9</div>
                    <div class="display">Drawing 10</div>
                    <div class="display">Drawing 11</div>
                    <div class="display">Drawing 12</div>
                </div>
            </section>

            <!-- BOOKS -->

            <section id="books">
                <h2>My Books</h2>

                <p>I really like writing books with my skill issue, and have published a grand total of 1 book on Medium.com. I am working on my second book, but no spoilers now... You can view my book on Medium.com and search DaYappinBear, and click that book and read it for free.</p>

                <div class="gallery">
                    <a class="display book"
                       href="https://medium.com/@gauribgurjar/p1xelverse-cyberville-tales-written-by-edc51ceff0e9"
                       target="_blank"
                       rel="noopener noreferrer">
                        My Published Book
                    </a>

                    <a class="display upcoming" href="#spoilers">
                        Upcoming Book<br>
                        No spoilers right now... I mean you CAN view em.
                    </a>
                </div>
            </section>

            <!-- SPOILERS: 10 SPACES -->

            <section id="spoilers">
                <h2>Spoiler Warning!</h2>

                <p>WARNING! Spoilers ahead! Read at your own risk!</p>

                <div class="gallery">
                    <div class="display">Spoiler Image 1</div>
                    <div class="display">Spoiler Image 2</div>
                    <div class="display">Spoiler Image 3</div>
                    <div class="display">Spoiler Image 4</div>
                    <div class="display">Spoiler Image 5</div>
                    <div class="display">Spoiler Image 6</div>
                    <div class="display">Spoiler Image 7</div>
                    <div class="display">Spoiler Image 8</div>
                    <div class="display">Spoiler Image 9</div>
                    <div class="display">Spoiler Image 10</div>
                </div>
            </section>

        </div>

        <!-- DRAWING SPACE -->

        <aside class="drawing-area">
            My drawings go here. I draw really badly but eh?
        </aside>

    </main>

    <!-- ABOUT SECTION -->

    <section id="about">
        <h2>About Me</h2>

        <p>Ella, my name is not really Bear, but it's a NICKname. I make silly stuff. I also play Minefun.io... My minefun.io account is DYappinBear0. I hope this grand audience of 0 people like my creations :D</p>

        <p>I like writing books and drawing behind a computer screen for 11 hours the end.</p>
    </section>

</body>
</html>
