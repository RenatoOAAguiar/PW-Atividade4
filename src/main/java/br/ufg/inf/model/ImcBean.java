package br.ufg.inf.model;

import java.util.Formatter;

public class ImcBean {
	
	public String calculoImc(ImcModel model) {
		String resultado = "";

		float peso = model.getPeso();
		float altura = model.getAltura();
		int sexo = model.getSexo();
		
		Formatter formatter = new Formatter();
		
		double imc = peso / (altura * altura);
		if (peso != 0 && altura != 0) {
			switch (sexo) {
			case 1:

				if (imc <= 19.1) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.";
				} else if (imc > 19.1 && imc <= 25.8) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.";
				} else if (imc >= 25.8 && imc <= 27.3) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.";
				} else if (imc >= 27.3 && imc <= 32.3) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.";
				} else if (imc > 32.3) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nObeso.";
				}

				break;
			case 0:

				if (imc <= 20.7) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.";
				} else if (imc > 20.7 && imc <= 26.4) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.";
				} else if (imc >= 26.4 && imc <= 27.8) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.";
				} else if (imc >= 27.8 && imc <= 31.1) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.";
				} else if (imc > 31.1) {
					resultado = "IMC = " + formatter.format("%.2f", imc) + "\nObeso.";
				}
				break;
			default:
				resultado = "Preencha todos campos corretamente!";
				break;
			}
		} else {
			resultado = "Preencha todos campos corretamente!";
		}
		return resultado;
	}

}
