const { exec } = require('child_process');

// Ejecutar el servidor Prolog
exec('swipl -f server.pl', (error, stdout, stderr) => {
  if (error) {
    console.error(`Error al iniciar el servidor: ${error.message}`);
    return;
  }
  if (stderr) {
    console.error(`Error: ${stderr}`);
    return;
  }
  console.log(`Salida: ${stdout}`);
});

