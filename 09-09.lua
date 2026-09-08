gg.setVisible(false)
gg.toast("Berhasil memuat")

while true do
    if gg.isVisible() then
        gg.setVisible(false)

        local menu = gg.choice({
            "Layla",
            "Keluar"
        }, nil)

        if menu == 1 then
          gg.searchNumber("2320;133;290", gg.TYPE_DWORD)
      
          if gg.getResultsCount() == 0 then
              gg.clearResults()
              gg.searchNumber("2320;133;250", gg.TYPE_DWORD)
          end
      
          local results = gg.getResults(gg.getResultsCount())
      
          for i, v in ipairs(results) do
              if v.value == 2320 then
                  v.value = 75000
              elseif v.value == 133 then
                  v.value = 60000
              elseif v.value == 290 or v.value == 250 then
                  v.value = 1200
              end
          end
      
          gg.setValues(results)
          gg.clearResults()
      
          gg.toast("Berhasil!")
        
        elseif menu == 2 then
            os.exit()
        end
    end

    gg.sleep(100)
end
