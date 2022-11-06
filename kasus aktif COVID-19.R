#Plot Total Kasus Aktif Cases Provinsi Sulawesi Selatan
library(plotly)
plotly::plot_ly(data = Data_kasus_SulSel) %>%
  plotly::add_trace(
    x = ~Date,
    y = ~Total.Active.Cases,
    type = "scatter",
    mode = "lines+markers",
    name = "Total Kasus",
    line = list(color = 'blue'),
    marker = list(color = 'blue')
  ) %>%
  plotly::layout(
    title = "Kasus Covid 19 Sul-Sel",
    yaxis = list(title = "Jumlah kasus Aktif"),
    xaxis = list(title = "Tanggal"),
    legend = list(x = 0.1, y = 0.9),
    hovermode = "compare"
  )