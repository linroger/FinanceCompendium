const { app, BrowserWindow, Menu, dialog, shell } = require('electron');
const path = require('path');

let mainWindow;

function setupMacMenu() {
  if (process.platform !== 'darwin') return;

  // Configure the standard About panel with version and credits.
  try {
    app.setAboutPanelOptions({
      applicationName: app.getName(),
      applicationVersion: '1.0',
      version: '1.0',
      credits: 'Developed by Sumit Duster',
      copyright: '© GitHub'
    });
  } catch (_) {
    // Ignore if not supported in this environment.
  }

  const appName = app.getName();
  const template = [
    {
      label: appName,
      submenu: [
        {
          label: `About ${appName}`,
          click: async () => {
            await dialog.showMessageBox({
              type: 'info',
              title: `About ${appName}`,
              message: appName,
              detail: 'Version 1.0\n\nUnofficial desktop wrapper for GitHub.com.\n\nDeveloped by Sumit Duster\n© GitHub',
              buttons: ['OK'],
              defaultId: 0
            });
          }
        },
        { type: 'separator' },
        { role: 'services' },
        { type: 'separator' },
        { role: 'hide' },
        { role: 'hideOthers' },
        { role: 'unhide' },
        { type: 'separator' },
        { role: 'quit' }
      ]
    },
    { role: 'editMenu' },
    { role: 'viewMenu' },
    { role: 'windowMenu' }
  ];

  Menu.setApplicationMenu(Menu.buildFromTemplate(template));
}

function createWindow() {
  const iconPath = path.join(__dirname, 'assets', 'icon.png');

  mainWindow = new BrowserWindow({
    width: 1400,
    height: 900,
    minWidth: 800,
    minHeight: 600,
    titleBarStyle: 'hiddenInset',
    backgroundColor: '#0F172A',
    // Used on Windows/Linux; macOS uses the app bundle icon (and dock icon set below).
    icon: iconPath,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      contextIsolation: true,
      nodeIntegration: false,
      // Note: sandbox must be false to enable webviewTag
      // The webview itself runs in its own sandboxed process
      sandbox: false,
      webviewTag: true
    },
    show: false,
    center: true
  });

  // Load the local HTML file first
  mainWindow.loadFile('index.html');

  // Show window when ready
  mainWindow.once('ready-to-show', () => {
    mainWindow.show();
  });

  // Open external links in default browser
  mainWindow.webContents.setWindowOpenHandler(({ url }) => {
    if (url.startsWith('http') || url.startsWith('https')) {
      shell.openExternal(url);
      return { action: 'deny' };
    }
    return { action: 'allow' };
  });

  mainWindow.on('closed', () => {
    mainWindow = null;
  });
}

app.whenReady().then(() => {
  // Note: We don't manually set app.dock.setIcon() here.
  // Electron automatically uses the app bundle's icon (converted from assets/icon.png
  // by electron-builder) for the dock, which provides proper multi-resolution support
  // via .icns format. Manually setting a large PNG can cause scaling issues.
  
  setupMacMenu();
  createWindow();

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow();
    }
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

