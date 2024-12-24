<div class="container max-w-7xl mx-auto">
  {{ .Content }}
</div>

<script>
const templateData = {
  servers: {{ .Servers }},
  serversDisplay: {{ .ServersDisplay }},
  options: {{ .Options }},
  urlOption: "{{ .URLOption }}",
  urlServer: "{{ .URLServer }}",
  urlCommand: "{{ .URLCommand }}",
  isWhois: {{ .IsWhois }},
  whoisTarget: "{{ .WhoisTarget }}",
  allServersURL: "{{ .AllServersURL }}"
};

window.birdLGData = templateData;
</script>