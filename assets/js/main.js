document.addEventListener("DOMContentLoaded", function () {
  var toggle = document.querySelector(".nav-toggle");
  var header = document.querySelector(".site-header");
  if (!toggle || !header) return;
  toggle.addEventListener("click", function () {
    header.classList.toggle("nav-open");
  });
});
