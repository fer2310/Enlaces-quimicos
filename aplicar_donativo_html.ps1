$htmlPath = "index.html"
$urlDonativo = "https://tu-enlace-de-donativos.com"
$textoBoton = "Dona por favor, nos ayudaría mucho para seguir dándole más actualización"

$bloque = @"
<div id="donativos-topbar-wrap" style="margin-left:auto;display:flex;align-items:center;">
  <button id="btn-donativos-play" type="button" onclick="window.open('$urlDonativo','_blank','noopener,noreferrer')" style="background:linear-gradient(135deg,#22c55e,#15803d);color:#ffffff;border:1.5px solid #4ade80;border-radius:12px;padding:10px 14px;font-size:12px;font-weight:700;cursor:pointer;box-shadow:0 0 18px rgba(34,197,94,0.42);max-width:340px;line-height:1.25;text-align:left;">$textoBoton</button>
</div>
<script>
(function(){
  const wrap = document.getElementById("donativos-topbar-wrap");
  if (!wrap) return;
  const h1 = document.querySelector("h1, h2");
  const header = (h1 && h1.parentElement) || document.body.firstElementChild;
  if (header && !header.contains(wrap)) {
    header.style.display = "flex";
    header.style.alignItems = "center";
    header.style.flexWrap = "wrap";
    header.style.gap = "12px";
    header.appendChild(wrap);
  }
})();
</script>
"@

$content = Get-Content $htmlPath -Raw -Encoding UTF8
if ($content -notmatch "donativos-topbar-wrap") {
  if ($content -match "</body>") {
    $content = $content -replace "</body>", ($bloque + "`r`n</body>")
  } else {
    $content = $content + "`r`n" + $bloque
  }
  Set-Content $htmlPath -Value $content -Encoding UTF8
}
