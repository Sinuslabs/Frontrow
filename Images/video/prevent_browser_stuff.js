// Set this to false to enable the standard browser interactions
// (context menu, scroll wheel, etc)
var ENABLED = true;

if (ENABLED) {
  document.addEventListener("contextmenu", (event) => event.preventDefault());
  document.addEventListener(
    "wheel",
    function (e) {
      e.preventDefault();
      e.stopPropagation();
    },
    {
      passive: false, // Add this
    }
  );
}
