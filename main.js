document.getElementById("my-file-csv").addEventListener("change", function (e) {
  const file = e.target.files[0];
  const reader = new FileReader();

  reader.onload = function (e) {
    const content = e.target.result;

    console.log(content);

    const parser = new DOMParser();
    const xsltProcessor = new XSLTProcessor();

    // Cargar el XML y el XSLT
    const xmlString = content;

    fetch("transformador.xslt")
      .then((response) => response.text())
      .then((data) => {
        // El contenido del archivo .xslt estará en la variable 'data'

        const xsltString = data;

        const xmlDocument = parser.parseFromString(
          xmlString,
          "application/xml"
        );
        const xsltDocument = parser.parseFromString(
          xsltString,
          "application/xml"
        );

        xsltProcessor.importStylesheet(xsltDocument);

        // Aplicar la transformación
        const resultDocument = xsltProcessor.transformToDocument(xmlDocument);

        // Convertir el resultado a HTML y mostrarlo
        const serializer = new XMLSerializer();
        const resultHtml = serializer.serializeToString(resultDocument);

        document.getElementById("output").innerHTML = resultHtml;

        document.getElementById("my-result").innerHTML = "Proceso OK";

        console.log(data);
      })
      .catch((error) => console.error("Error al cargar el archivo:", error));
  };

  reader.readAsText(file);
});
