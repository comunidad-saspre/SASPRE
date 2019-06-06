using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Forms;

namespace Capa_Datos
{
    public class Scrapper
    {

        public Dictionary<string, string> DescripcionDia { get; set; }
        public Dictionary<string, string> TemperaturaMaxima { get; set; }
        public Dictionary<string, string> Precipitacion { get; set; }
        public Dictionary<string, string> TemperaturaMinima { get; set; }

        public string GetMaxTemperatureString()
        {
            string temperature = "";
            try
            {
                foreach (var item in TemperaturaMaxima)
                {
                    temperature += $"Key: {item.Key}, Value: {item.Value} \n\r";
                }
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER TEMPERATURA MAXIMA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            return temperature;
        }
        public string GetMinTemperatureString()
        {

            string temperature = "";
            try
            {
                foreach (var item in TemperaturaMinima)
                {
                    temperature += $"Key: {item.Key}, Value: {item.Value} \n\r";
                }
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER TEMPERATURA MINIMA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return temperature;
        }
        public string GetDescriptionString()
        {
            string description = "";
            try
            {
                foreach (var item in DescripcionDia)
                {
                    description += $"Key: {item.Key}, Value: {item.Value} \n\r";
                }
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER DESCRIPCION TEMPERATURA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return description;
        }
        public string GetPrecipitationString()
        {
            string precipitation = "";
            try
            {
                foreach (var item in Precipitacion)
                {
                    precipitation += $"Key: {item.Key}, Value: {item.Value} \n\r";
                }
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER PRECIPITACION", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return precipitation;
        }

        public Scrapper()
        {
            string path = (System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase.ToString()).Remove(0, 6));
            try
            {
                DescripcionDia = new Dictionary<string, string>();
                TemperaturaMaxima = new Dictionary<string, string>();
                TemperaturaMinima = new Dictionary<string, string>();
                Precipitacion = new Dictionary<string, string>();
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER DATOS DE LA SEMANA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        public void GetDescripcionclima()
        {
            try
            {
                string climadata = httpGet("https://www.foreca.es/Mexico/Tamaulipas/Ciudad--Mante?quick_units=us");
                ///Console.Write(HTML);

                ktf.Kuto infoclima = new ktf.Kuto(climadata);
                //snip the data limints

                var date = DateTime.Now;
                var day7 = date.AddDays(7).Day;

                var day = date.Day;
                var month = date.Month;
                var year = date.Year;

                var lastDay = GetFormattedDate(day7, month, year);

                infoclima = infoclima.Extract("class=\"daylist\"></div></div><script>var", $"{lastDay}120000");

                for (int i = 1; i <= 7; i++)
                {
                    var fDate = GetFormattedDate(day, month, year);
                    var dayInfo = infoclima.Extract($"{fDate}120000", "");
                    DescripcionDia[$"dia{i}"] = dayInfo.Extract("symb: '", "', wx:").ToString(); // <- extrae symb
                                                                                                 //DescripcionDia[$"dia{i}"] = dayInfo.Extract("wx: '", "', winds:").ToString(); <- extrae wx

                    day = date.AddDays(i).Day;

                }

                // agrega primero el 7, luego del 1 al 6, siendo el 6 el dia 7.
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER DESCRIPCION CLIMA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        private string GetFormattedDate(int day, int month, int year)
        {

            string date = year.ToString();
            try
            {
                if (month < 10) date += "0" + month.ToString();
                else date += month.ToString();

                if (day < 10) date += "0" + day.ToString();
                else date += day.ToString();
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER FORMATO DEL DIA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return date;
        }

        private void ScrapDay(string html, int day)
        {
            try
            {

                ktf.Kuto scrapper = new ktf.Kuto(html);

                if (day == 1) scrapper = scrapper.Extract("<li class=\"dia d1 activo\"", "</li>");
                else scrapper = scrapper.Extract($"<li class=\"dia d{day}\"", "</li>");

                string temperaturaMaxima;
                string temperaturaMinima;
                string datosDia;

                datosDia = scrapper.Extract("class=\"probabilidad-lluvia\">", "<br>").ToString();
                datosDia += " " + scrapper.Extract("class=\"changeUnitR\" data=\"", "\">").ToString();
                Precipitacion.Add($"dia{day}", datosDia);

                var maxTempScrapper = scrapper.Extract("<span class=\"temperatura\"", "/span>").Extract("data=\"", "|0|\">");
                temperaturaMaxima = Convert.ToString(Math.Round(Convert.ToDouble(maxTempScrapper.StripTags().ToString())));

                var minTempScrapper = scrapper.Extract("<span class=\"minima changeUnitT\"", "/span>").Extract("data=\"", "|0|\">");
                temperaturaMinima = Convert.ToString(Math.Round(Convert.ToDouble(minTempScrapper.StripTags().ToString())));

                TemperaturaMaxima[$"dia{day}"] = temperaturaMaxima;
                TemperaturaMinima[$"dia{day}"] = temperaturaMinima;
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER DATOS DEL DIA", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        public bool Scrap()
        {
            try
            {
                string html = httpGet("https://www.meteored.mx/clima_Ciudad+Mante-America+Norte-Mexico-Tamaulipas--1-22361.html");
                string climadata = httpGet("https://www.foreca.es/Mexico/Tamaulipas/Ciudad--Mante?quick_units=us");
                for (int day = 1; day <= 7; ++day) ScrapDay(html, day);

            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER HTML", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            return true;
        }

        static string httpGet(string URL)
        {
            String HTML = "";
            try
            {
                WebClient web = new WebClient();
                System.IO.Stream stream = web.OpenRead(URL);
                using (System.IO.StreamReader reader = new System.IO.StreamReader(stream))
                {
                    HTML = reader.ReadToEnd();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("ADVERTENCIA", "ERROR AL OBTENER HTML", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            return HTML;
        }
    }
}
