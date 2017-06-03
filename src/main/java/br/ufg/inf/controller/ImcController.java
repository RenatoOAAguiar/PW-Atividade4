package br.ufg.inf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufg.inf.model.ImcBean;
import br.ufg.inf.model.ImcModel;

@WebServlet(value = "/calculoImc")
public class ImcController extends HttpServlet {
	private static final Logger logger = Logger.getLogger(ImcBean.class.getName());

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		StringBuilder html = new StringBuilder();
		PrintWriter out = resp.getWriter();
		try {
			float peso = Float.parseFloat(req.getParameter("peso"));
			float altura = Float.parseFloat(req.getParameter("altura"));
			int sexo = Integer.parseInt(req.getParameter("sexo"));

			ImcModel model = new ImcModel();
			model.setAltura(altura);
			model.setPeso(peso);
			model.setSexo(sexo);

			ImcBean bean = new ImcBean();
			String resultado = bean.calculoImc(model);
			req.setAttribute("resultado", resultado);

		} catch (NumberFormatException e) {
			logger.info(e.getMessage());
			html.append("<div class='alert alert-danger'>");
			html.append("<strong>Preencha corretamente os campos!</strong>");
			html.append("</div>");
			req.setAttribute("erro", html);
		}

		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
}
