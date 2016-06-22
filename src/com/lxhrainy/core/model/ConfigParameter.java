package com.lxhrainy.core.model;

import com.lxhrainy.core.annotation.KeyField;
import com.lxhrainy.core.annotation.TableEntry;
/**
 * InnoDB free: 4096 kB
 * @author 杨新华
 */
@TableEntry("config_parameter")
public class ConfigParameter
{
	/**key**/
	@KeyField
	private String key;
	/**disname**/
	private String disname;
	/**value**/
	private String value;

	public String getKey()
	{
		return this.key;
	}
	public void setKey(String key)
	{
		this.key = key;
	}
	public String getDisname()
	{
		return this.disname;
	}
	public void setDisname(String disname)
	{
		this.disname = disname;
	}
	public String getValue()
	{
		return this.value;
	}
	public void setValue(String value)
	{
		this.value = value;
	}
}