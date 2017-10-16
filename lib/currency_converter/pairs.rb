class CurrencyConverter::Pairs
  attr_accessor :name, :value, :net_change, :time

  def self.currency_scraper

    doc = Nokogiri::HTML(open("https://www.bloomberg.com/markets/currencies"))
    pairs_array = []
    doc.search("tr.data-table-row").each do |row|

      pair = self.new
      pair.name = row.search("div.data-table-row-cell__link-block").text.strip
      pair.value = row.search("td.data-table-row-cell[data-type='value']").text.strip
      pair.net_change = row.search("td.data-table-row-cell.hide-on-mobile").first.text.strip
      pair.time = row.search("td.data-table-row-cell.hide-on-mobile[data-type='time']").text.strip
      pairs_array << pair
    end
    pairs_array
  end

  def self.disclaimer_scraper
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/markets/currencies"))
    disclaimer = doc.search("div.bottom-disclaimer").text
    puts disclaimer
  end

end
