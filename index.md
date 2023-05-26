---
title: Назначение
layout: home
nav_order: 1
---

<style>

.pCLS01 {margin:0cm}
.pCLS02 {margin:0cm;text-align:center}
.pCLS03 {margin:0cm;text-align:right}

.spanCLS12 {font-style:italic}
.spanCLS13 {font-weight:bold}
.spanCLS18 {color:SpringGreen}
.spanCLS10 {color:DodgerBlue}
.spanCLS15 {color:DeepPink}
.spanCLS14 {color:Coral}
.spanCLS16 {color:Yellow}

.tbl1_ttl_txt {color:black;font-weight:bold}
.tbl1_ttl2 {background:DodgerBlue;vertical-align:top}
.tbl1_ttl3 {background:MediumSpringGreen;vertical-align:top}
.tbl1_ttl4 {background:Salmon;vertical-align:top}
.tbl1_clm1 {vertical-align:middle}
.tbl1_clm2 {vertical-align:middle;width:250px}
.tbl1_clm3 {vertical-align:middle;width:250px}
.tbl1_clm4 {vertical-align:middle;width:170px}

/*.tbl2_ttl {background:Orchid;vertical-align:top;}*/
.tbl2_ttl_txt {color:MintCream;font-weight:bold}
.tbl2_txt {font-style:italic}
.tbl2_clm1 {vertical-align:middle}
.tbl2_clm2 {vertical-align:middle;width:150px}
.tbl2_clm3 {vertical-align:middle}

</style>


# Автоматический нумератор версий для Visual Studio


## Назначение

Автоматически обновляет версию проекта в зависимости от используемой для его сборки конфигурации.

Нумератор использует модель версии, состоящую из следующих компонентов:

| Компонент       | Значение                       |
|-----------------|--------------------------------|
| `Major`         | старший номер                  |
| `Minor`         | младший номер                  |
| `Build`         | номер сборки                   |
| `Revision`      | номер пересмотра               |
| `Preview`       | метка предварительного выпуска |
| `PreviewNumber` | номер предварительного выпуска |
| `Release`       | метка окончательного выпуска   |


Нумератор понимает сборочные конфигурации следующим образом:

| Конфигурация | Назначение                                                                   |
|--------------|------------------------------------------------------------------------------|
| **Debug**    | Создание закрытых (не предназначенных для опубликования) отладочных выпусков |
| **Release**  | Создание открытых (предназначенных для опубликования) окончательных выпусков |
| **Preview**  | Создание открытых или закрытых предварительных выпусков                      |


Механизм обновления каждого компонента версии в зависимости от конфигурации сборки представлен на следующей схеме:

<table>
 <tbody><tr>
  <td>
  <p class="pCLS02"><span>&nbsp;</span></p>
  </td>
  <td class="tbl1_ttl2">
  <p class="pCLS02"><span class="tbl1_ttl_txt">DEBUG</span></p>
  </td>
  <td class="tbl1_ttl3">
  <p class="pCLS02"><span class="tbl1_ttl_txt">PREVIEW</span></p>
  </td>
  <td class="tbl1_ttl4">
  <p class="pCLS02"><span class="tbl1_ttl_txt">RELEASE</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>Major</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS02"><span class="spanCLS10">не изменяется</span></p>
  </td>
  <td class="tbl1_clm3">
  <p class="pCLS02"><span class="spanCLS10">не изменяется</span></p>
  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS10">не изменяется</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>Minor</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS01"><span class="spanCLS10">не изменяется </span></p>

  <p class="pCLS03"><span class="spanCLS12">если <span class="spanCLS13">Release</span> было <span class="spanCLS14">снято</span></span></p>

  <p class="pCLS01"><span class="spanCLS15">увеличивается на 1 </span></p>

  <p class="pCLS03"><span class="spanCLS12">если <span class="spanCLS13">Release</span> было <span class="spanCLS16">установлено</span></span></p>

  </td>
  <td class="tbl1_clm3">
  <p class="pCLS01"><span class="spanCLS10">не изменяется </span></p>

  <p class="pCLS03"><span class="spanCLS12">если <span class="spanCLS13">Release</span> было <span class="spanCLS14">снято</span></span></p>

  <p class="pCLS01"><span class="spanCLS15">увеличивается на 1 </span></p>

  <p class="pCLS03"><span class="spanCLS12">если <span class="spanCLS13">Release</span> было <span class="spanCLS16">установлено</span></span></p>

  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS10">не изменяется</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>Build</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS02"><span class="spanCLS15">увеличивается на 1</span></p>
  </td>
  <td class="tbl1_clm3">
  <p class="pCLS02"><span class="spanCLS15">увеличивается на 1</span></p>
  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS15">увеличивается на 1</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>Revision</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS02"><span class="spanCLS18">сбрасывается до 0</span></p>
  </td>
  <td class="tbl1_clm3">
  <p class="pCLS02"><span class="spanCLS18">сбрасывается до 0</span></p>
  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS18">сбрасывается до 0</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>Preview</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS02"><span class="spanCLS14">снимается</span></p>
  </td>
  <td class="tbl1_clm3">
  <p class="pCLS02"><span class="spanCLS16">устанавливается</span></p>
  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS14">снимается</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>PreviewNumber</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS02"><span class="spanCLS10">не изменяется</span></p>
  </td>
  <td class="tbl1_clm3">
  <p class="pCLS02"><span class="spanCLS15">увеличивается на 1</span></p>
  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS18">сбрасывается до 0</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl1_clm1">
  <p class="pCLS02"><span>Release</span></p>
  </td>
  <td class="tbl1_clm2">
  <p class="pCLS02"><span class="spanCLS14">снимается</span></p>
  </td>
  <td class="tbl1_clm3">
  <p class="pCLS02"><span class="spanCLS14">снимается</span></p>
  </td>
  <td class="tbl1_clm4">
  <p class="pCLS02"><span class="spanCLS16">устанавливается</span></p>
  </td>
 </tr>
</tbody></table>


Принцип работы нумератора упрощённо показывает следующий пример:

<table>
 <tbody><tr>
  <td colspan="3" class="tbl2_ttl">
  <p class="pCLS01"><span class="tbl2_ttl_txt">Версия 1.0 продукта</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>&nbsp;</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>1.0.0.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Debug</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.1.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 1 (или 1.0, с revision) – это первый debug-выпуск версии 1.0 продукта</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Preview</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.2.0 Preview 1</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 2 (или 2.0) – это первый preview-выпуск версии 1.0</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Debug</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.3.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 3 – это очередной debug-выпуск текущей версии</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Preview</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.4.0 Preview 2</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 4 – это 2-й preview-выпуск текущей версии</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Debug</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.5.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 5 – это очередной debug-выпуск</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Preview</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.6.0 Preview 3</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 6 – это 3-й preview-выпуск</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Debug</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.7.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 7 – это очередной debug-выпуск</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Release</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.0.8.0 (release)</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 8 – это release-выпуск версии 1.0 продукта</span></p>
  </td>
 </tr>
 <tr>
  <td colspan="3" class="tbl2_ttl">
  <p class="pCLS01"><span class="tbl2_ttl_txt">Версия 1.1 продукта</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Debug</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.1.9.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 9 (или 9.0) – это первый debug-выпуск версии 1.1 продукта</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Preview</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.1.10.0 Preview</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 10 – это первый preview-выпуск версии 1.1</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>Debug</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>→ 1.1.11.0</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span class="tbl2_txt">сборка 11 – это очередной debug-выпуск текущей версии</span></p>
  </td>
 </tr>
 <tr>
  <td class="tbl2_clm1">
  <p class="pCLS02"><span>&nbsp;</span></p>
  </td>
  <td class="tbl2_clm2">
  <p class="pCLS01"><span>· · ·</span></p>
  </td>
  <td class="tbl2_clm3">
  <p class="pCLS01"><span>&nbsp;</span></p>
  </td>
 </tr>
</tbody></table>
