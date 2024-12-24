<div class="mb-4">
  <h2 class="text-xl font-semibold">BGPmap: {{ html .Target }}</h2>
</div>

<div class="bg-white dark:bg-gray-800 rounded-lg shadow-sm overflow-hidden">
  <div class="px-6 py-4">
    <div id="bgpmap" class="overflow-x-auto"></div>
  </div>
</div>

<script src="/assets/viz.js" crossorigin="anonymous"></script>
<script src="/assets/lite.render.js" crossorigin="anonymous"></script>
<script>
  function decodeBase64(base64) {
    const text = atob(base64);
    const length = text.length;
    const bytes = new Uint8Array(length);
    for (let i = 0; i < length; i++) {
      bytes[i] = text.charCodeAt(i);
    }
    const decoder = new TextDecoder();
    return decoder.decode(bytes);
  }

  var viz = new Viz();
  viz.renderSVGElement(decodeBase64({{ .Result }}))
    .then(element => {
      document.getElementById("bgpmap").appendChild(element);
    })
    .catch(error => {
      document.getElementById("bgpmap").innerHTML = "<pre class='text-red-600 dark:text-red-400'>"+error+"</pre>";
    });
</script>