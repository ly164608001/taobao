package com.lxhrainy.core.utils;

import java.util.Map;

import org.apache.commons.jexl.Expression;
import org.apache.commons.jexl.ExpressionFactory;
import org.apache.commons.jexl.JexlContext;

public class FormulaCalculator {
	
	String _formula;
	
	JexlContext _jexlContext;
	
	Map _varMap;
	
	public FormulaCalculator(){
		
		_jexlContext = new JexlContext(){
			public Map getVars() {
				return _varMap;
			}
			public void setVars(Map vars) {
				_varMap.clear();
				_varMap.putAll( vars );
			}
		};
	}
	
	public void setFormula(String formula) throws Exception{
		validateFormula( formula );
		_formula = formula;
	}
	
	public void setVars(Map<String, Number> vars){
		_varMap = vars;
	}
	
	
	public Number calculate() throws Exception{
		Expression e = ExpressionFactory.createExpression( _formula );
		return (Number) e.evaluate( _jexlContext );
	}
	
	private void validateFormula( String formula ) throws Exception{
		// FIXME: implementation
	}
}