Feature: Credito
  Yo como cliente
  quiero poder pedir credito
  para poder comprar vivienda y saber cuanto pagaria
  Scenario Outline: calculo de la cuota inicial
    Given quiero saber la cuota inicial para adquirir una propiedad
    When el valor de la propiedad es <valorPropiedad> y el porcentaje de cuota inicial es <porcentaje>
    Then el valor de la cuota inicial es de <cuotaInicial>
    Examples:
    |valorPropiedad|porcentaje|cuotaInicial|
    |   90000000   |    30%   |18000000    |

  Scenario Outline: Aplicar para un subsidio de vivienda
    Given quiero averiguar si aplico a un subsidio de vivienda
    When estoy en <CajaComp> y el sisben es de <NivelSisben>
    Then el subsidio es:  <estadoSubsidio>
    Examples:
    |CajaComp|NivelSisben|estadoSubsidio|
    |Comfandi|Grupo A    | Aprobado     |


  Scenario Outline: Saber el valor de las cuotas mensuales
    Given Quiero cotizar en cuanto me quedarian las cuotas mensuales
    When el valor del credito es <credito>, el valor de la sa mensual es <tasaMensual> y el plazo en el que quiero pagarlo es <plazoEnMeses>
    Then debería ver el resultado en cuotas de <valordelaCuota>
    Examples:
    |credito | tasaMensual |plazoEnMeses|valordelaCuota|
    |90000000|      0.59%  |   180      |  811826      |


  Scenario Outline: calculo de la tasa de interes mensual Credito Hipotecario
    Given Quiero saber cual es la tasa de interes mensual
    When en el banco <nombreBanco> con el tipo de credito <nombreCredito>
    Then La tasa mensual es de <tasaMensual>
    Examples:
    |nombreBanco|nombreCredito|tasaMensual|
    |popular    |no Vis       |7.29%      |


  Scenario Outline: calculo de la tasa de interes mensual Credito Leasing Habitacional
    Given Quiero saber cual es la tasa de interes mensual
    When en el banco <nombreBanco>
    Then La tasa mensual es de <tasaMensual>
    Examples:
    |nombreBanco|tasaMensual|
    |popular    |7.29%      |


  Scenario Outline: Calculo de cuanto debe ganar para aplicar a un credito de un inmueble
    Given Quiero saber cuando puede ser mi capacidad de endeudamiento para adquirir un inmueble
    When mis ingresos son <salario>
    And  capacidad de enduedamiento es de <capacidadEndeudamiento>
    Then Su capacidad de endeudamiento es de <capacidadEndeudamiento>
    Examples:
    |salario|capacidadEndeudamiento|capacidadEndeudamiento|
    |1000000| 30%                  |300000                |