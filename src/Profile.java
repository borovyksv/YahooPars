import jaxb.Query;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;


@WebServlet("/parser")
public class Profile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String request = makeRequest(req.getParameterValues("cur"));
        Query query = init(request);
        req.setAttribute("rates", query.getResults().getRates());
        getServletContext().getRequestDispatcher("/result.jsp").forward(req, resp);

    }

    private String makeRequest(String... currency) {
        String result = "";

        for (String s : currency) {
            result+="\""+s+"\",%20";
        }
        if (result.length()>4) result=result.substring(0, result.length() - 4);
        return "http://query.yahooapis.com/v1/public/yql?format=xml&q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(" +
                result+
                ")&env=store://datatables.org/alltableswithkeys";

    }

    private  Query init(String request) {
        Query query = null;
        try (InputStream inputStream = new URL(request).openStream()) {
            JAXBContext jaxbContext = JAXBContext.newInstance(Query.class);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            query = (Query) unmarshaller.unmarshal(inputStream);
        } catch (JAXBException | IOException e) {
            e.printStackTrace();
        }
        return query;
    }


}
