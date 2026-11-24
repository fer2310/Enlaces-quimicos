<script>
(function () {
  const URL_DONATIVO = "https://tu-enlace-de-donativos.com";
  const TEXTO_BOTON = "Dona por favor, nos ayudaría mucho para seguir dándole más actualización";

  if (document.getElementById("btn-donativo-top")) return;

  const btn = document.createElement("button");
  btn.id = "btn-donativo-top";
  btn.type = "button";
  btn.textContent = TEXTO_BOTON;
  btn.style.cssText = [
    "margin-left:auto",
    "background:linear-gradient(135deg,#22c55e,#15803d)",
    "color:#ffffff",
    "border:1.5px solid #4ade80",
    "border-radius:12px",
    "padding:10px 14px",
    "font-size:12px",
    "font-weight:700",
    "cursor:pointer",
    "box-shadow:0 0 18px rgba(34,197,94,0.4)",
    "max-width:340px",
    "line-height:1.25",
    "text-align:left"
  ].join(";");

  btn.onclick = function () {
    window.open(URL_DONATIVO, "_blank", "noopener,noreferrer");
  };

  const titulo = Array.from(document.querySelectorAll("h1,h2,.title")).find(el =>
    el.textContent && el.textContent.includes("Tabla Periodica")
  );
  const headerTarget = (titulo && titulo.parentElement) || document.body.firstElementChild;
  if (headerTarget) {
    headerTarget.style.display = "flex";
    headerTarget.style.alignItems = "center";
    headerTarget.style.flexWrap = "wrap";
    headerTarget.style.gap = "12px";
    headerTarget.appendChild(btn);
  }
})();
</script>
