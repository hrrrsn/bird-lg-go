{{ $ServerName := urlquery .ServerName }}

<div class="overflow-x-auto">
  <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
    <thead>
      <tr>
        {{ range .Header }}
          <th>{{ . }}</th>
        {{ end }}
      </tr>
    </thead>
    <tbody>
      {{ range .Rows }}
        <tr class="hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors">
          <td>
            <a href="/lg/detail/{{ urlquery $.ServerName }}/{{ urlquery .Name }}" class="text-blue-600 dark:text-blue-400 hover:underline">{{ .Name }}</a>
          </td>
          <td>{{ .Proto }}</td>
          <td>{{ .Table }}</td>
          <td>
            <span class="
              {{ if eq .State "up" }}
                up
              {{ else }}
                down
              {{ end }}">
              {{ .State }}
            </span>
          </td>
          <td>{{ .Since }}</td>
          <td>{{ .Info }}</td>
        </tr>
      {{ end }}
    </tbody>
  </table>
</div>