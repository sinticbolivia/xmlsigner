using SinticBolivia.Classes;

public static int main()
{
    var signer = new SBXmlSigner.with_files(
        "/Users/marcelo/Documents/EZHOTELES/certificado.pem",
        "/Users/marcelo/Documents/EZHOTELES/llave_privada.pem"
    );
    string xml = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
    <facturaComputarizadaCompraVenta xsi:noNamespaceSchemaLocation="facturaComputarizadaCompraVenta.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <cabecera>
            <nitEmisor>1003579028</nitEmisor>
            <razonSocialEmisor>Carlos Loza</razonSocialEmisor>
            <municipio>La Paz</municipio>
            <telefono>78595684</telefono>
            <numeroFactura>1</numeroFactura>
            <cuf>44AAEC00DBD34C53C3E2CCE1A3FA7AF1E2A08606A667A75AC82F24C74</cuf>
            <cufd>BQUE+QytqQUDBKVUFOSVRPQkxVRFZNVFVJBMDAwMDAwM</cufd>
            <codigoSucursal>0</codigoSucursal>
            <direccion>AV. JORGE LOPEZ #123</direccion>
            <codigoPuntoVenta xsi:nil="true"/>
            <fechaEmision>2021-10-06T16:03:48.675</fechaEmision>
            <nombreRazonSocial>Mi razon social</nombreRazonSocial>
            <codigoTipoDocumentoIdentidad>1</codigoTipoDocumentoIdentidad>
            <numeroDocumento>5115889</numeroDocumento>
            <complemento xsi:nil="true"/>
            <codigoCliente>51158891</codigoCliente>
            <codigoMetodoPago>1</codigoMetodoPago>
            <numeroTarjeta xsi:nil="true"/>
            <montoTotal>99</montoTotal>
            <montoTotalSujetoIva>99</montoTotalSujetoIva>
            <codigoMoneda>1</codigoMoneda>
            <tipoCambio>1</tipoCambio>
            <montoTotalMoneda>99</montoTotalMoneda>
            <montoGiftCard xsi:nil="true"/>
            <descuentoAdicional>1</descuentoAdicional>
            <codigoExcepcion xsi:nil="true"/>
            <cafc xsi:nil="true"/>
            <leyenda>Ley N° 453: Tienes derecho a recibir información sobre las características y contenidos de los
                servicios que utilices.
            </leyenda>
            <usuario>pperez</usuario>
            <codigoDocumentoSector>1</codigoDocumentoSector>
        </cabecera>
        <detalle>
            <actividadEconomica>451010</actividadEconomica>
            <codigoProductoSin>49111</codigoProductoSin>
            <codigoProducto>JN-131231</codigoProducto>
            <descripcion>JUGO DE NARANJA EN VASO</descripcion>
            <cantidad>1</cantidad>
            <unidadMedida>1</unidadMedida>
            <precioUnitario>100</precioUnitario>
            <montoDescuento>0</montoDescuento>
            <subTotal>100</subTotal>
            <numeroSerie>124548</numeroSerie>
            <numeroImei>545454</numeroImei>
        </detalle>
    </facturaComputarizadaCompraVenta>
    """;
    string signed_xml = signer.sign(xml);
    print("VALA SIGNED XML:\n%s\n", signed_xml);
    return 0;
}
