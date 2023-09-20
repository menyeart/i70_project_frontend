class ForecastService
  def initialize
  end

  def conn
    Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_forecast_west
    get_url("/api/v1/forecast?direction=west")
  end

end