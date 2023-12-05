c = get_config()

# Allow all IP addresses to access the notebook server
c.NotebookApp.ip = '0.0.0.0'

# Disable authentication (no password required)
c.NotebookApp.token = ''
c.NotebookApp.password = ''
c.NotebookApp.open_browser = False
