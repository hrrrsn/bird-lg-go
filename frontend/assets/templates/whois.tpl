<div class="mb-4">
  <h2 class="text-xl font-semibold">whois {{ html .Target }}</h2>
</div>

<div class="bg-white dark:bg-gray-800 rounded-lg shadow-sm overflow-hidden">
  <div class="px-6 py-4">
    <pre class="text-sm text-gray-900 dark:text-gray-100 overflow-x-auto whitespace-pre-wrap">{{ .Result }}</pre>
  </div>
</div>