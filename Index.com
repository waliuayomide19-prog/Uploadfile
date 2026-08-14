Full website code for Waliu Ayomide

<!DOCTYPE html>
<html>
<head>
  <title>Waliu Ayomide Official Website</title>

  <style>
    body{
      margin:0;
      font-family:Arial, sans-serif;
      background:linear-gradient(135deg,#0f172a,#1e293b,#111827);
      color:white;
      text-align:center;
    }

    header{
      padding:40px 20px;
      background:rgba(0,0,0,0.4);
    }

    h1{
      color:#38bdf8;
      font-size:38px;
      margin-bottom:10px;
    }

    .time{
      font-size:18px;
      color:#facc15;
      margin-top:10px;
    }

    section{
      margin:30px auto;
      padding:20px;
      max-width:800px;
      background:rgba(255,255,255,0.05);
      border-radius:20px;
      box-shadow:0 0 15px rgba(0,0,0,0.3);
    }

    video{
      width:100%;
      max-width:700px;
      border-radius:15px;
      margin-top:15px;
    }

    .btn{
      display:inline-block;
      margin-top:20px;
      padding:14px 28px;
      background:#2563eb;
      color:white;
      text-decoration:none;
      border-radius:12px;
      font-weight:bold;
      font-size:18px;
    }

    .btn:hover{
      background:#1d4ed8;
    }

    footer{
      margin-top:40px;
      padding:25px;
      background:#020617;
      font-size:18px;
    }

    .number{
      color:#22c55e;
      font-weight:bold;
      font-size:22px;
    }
  </style>
</head>

<body>

<header>
  <h1>🌟 Waliu Ayomide Official Website 🌟</h1>
  <p>Welcome to my personal website created with HTML, Termux, GitHub and Chrome.</p>

  <div class="time">
    Date & Time: <span id="datetime"></span>
  </div>
</header>

<section>
  <h2>🕌 Mosque Prayer Video</h2>
  <p>Muslims praying peacefully in a mosque.</p>

  <video controls>
    <source src="https://cdn.coverr.co/videos/coverr-people-praying-in-a-mosque-1579811928308?download=1080p" type="video/mp4">
  </video>
</section>

<section>
  <h2>🏙️ Beautiful City Video</h2>
  <p>Enjoy a modern city view and moving traffic.</p>

  <video controls>
    <source src="https://cdn.coverr.co/videos/coverr-aerial-view-of-a-city-at-night-1561487022174?download=1080p" type="video/mp4">
  </video>
</section>

<section>
  <h2>💻 Learn Website Creation</h2>
  <p>A video tutorial about building websites with HTML and CSS.</p>

  <video controls>
    <source src="https://cdn.coverr.co/videos/coverr-programmer-working-on-a-laptop-1561486973532?download=1080p" type="video/mp4">
  </video>
</section>

<section>
  <h2>📞 Contact Me</h2>
  <p>If you want to contact me, click the button below.</p>

  <a class="btn" href="tel:09130116605">📲 Contact Me</a>
</section>

<footer>
  <p>Website Owner: <strong>Waliu Ayomide</strong></p>

  <p>Phone Number:</p>

  <div class="number">09130116605</div>

  <p>Thank you for visiting my website 🙏</p>
</footer>

<script>
function updateTime(){
  const now = new Date();

  const options = {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  };

  const date = now.toLocaleDateString('en-US', options);
  const time = now.toLocaleTimeString();

  document.getElementById('datetime').innerHTML = date + ' | ' + time;
}

updateTime();
setInterval(updateTime,1000);
</script>

</body>
</html>

---

   
