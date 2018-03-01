<%@ page import="com.sears.processing.code.model.Nps221ScreenVars" %>


<%@ include file="/mainCommon1.jsp"%>


<%StringData ENTER_F1_HELP_F3_EXIT_F5_REFRESH_F12_PREV_SCREEN = new StringData("ENTER_F1_HELP_F3_EXIT_F5_REFRESH_F12_PREV_SCREEN");%>

<%StringData ALL_COLON_LENGTH_1_28 = new StringData("ALL_COLON_LENGTH_1_28");%>
<%StringData TO = new StringData("TO");%>

<%StringData ALL_COLON_LENGTH_1 = new StringData("ALL_COLON_LENGTH_1_1");%>

<%StringData SITE_HH_MM_A_P_HH_MM_A_P_SHOP_HH_MM_A_P_HH_MM_A_P = new StringData("SITE_HH_MM_A_P_HH_MM_A_P_SHOP_HH_MM_A_P_HH_MM_A_P");%>

<%StringData PRINT_INDICATOR = new StringData("PRINT_INDICATOR");%>

<%StringData SCHEDULE_NO = new StringData("SCHEDULE_NO");%>

<%StringData MARKETING_ZONES = new StringData("MARKETING_ZONES");%>

<%StringData EXPIRATION_DATE = new StringData("EXPIRATION_DATE");%>

<%StringData EFFECTIVE_DATE = new StringData("EFFECTIVE_DATE");%>

<%StringData REMARKS = new StringData("REMARKS");%>

<%StringData ALL_DASH_LENGTH_1 = new StringData("ALL_DASH_LENGTH_1");%>

<%StringData ALL_BRACKET_LENGTH_1 = new StringData("ALL_BRACKET_LENGTH_1");%>

<%StringData CUST_SERVICE_PHONE = new StringData("CUST_SERVICE_PHONE");%>

<%StringData DRIV_INST = new StringData("DRIV_INST");%>

<%StringData UNIT_NAME = new StringData("UNIT_NAME");%>

<%StringData UNIT = new StringData("UNIT");%>

<%StringData NPS_SERVICE_UNIT_INFORMATION = new StringData("NPS_SERVICE_UNIT_INFORMATION");%>

<%StringData NPS22100 = new StringData("NPS22100");%>

<% Nps221ScreenVars sv = (Nps221ScreenVars) screenModel.getVariables();%>

<br/><br/><br/><br/>
<table>

<tr style='height:22px;'><td>


<%if ((new Byte((sv.nps2215).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>
	
  		
		<%					
		if(!((sv.nps2215.getFormData()).toString()).trim().equalsIgnoreCase("")) { 	
					
							if(longValue == null || longValue.equalsIgnoreCase("")) {
								formatValue = formatValue( (sv.nps2215.getFormData()).toString()); 
							} else {
								formatValue = formatValue( longValue);
							}
							
							
					} else  {
								
					if(longValue == null || longValue.equalsIgnoreCase("")) {
								formatValue = formatValue( (sv.nps2215.getFormData()).toString()); 
							} else {
								formatValue = formatValue( longValue);
							}
					
					}
					%>			
				<div class='<%= ((formatValue == null)||("".equals(formatValue.trim()))) ? 
						"blank_cell" : "output_cell" %>'>
				<%=formatValue%>
			</div>	
		<%
		longValue = null;
		formatValue = null;
		%>
  <%}%>
	

<%if ((new Byte((sv.nps2216).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>
	
  		
		<%					
		if(!((sv.nps2216.getFormData()).toString()).trim().equalsIgnoreCase("")) { 	
					
							if(longValue == null || longValue.equalsIgnoreCase("")) {
								formatValue = formatValue( (sv.nps2216.getFormData()).toString()); 
							} else {
								formatValue = formatValue( longValue);
							}
							
							
					} else  {
								
					if(longValue == null || longValue.equalsIgnoreCase("")) {
								formatValue = formatValue( (sv.nps2216.getFormData()).toString()); 
							} else {
								formatValue = formatValue( longValue);
							}
					
					}
					%>			
				<div class='<%= ((formatValue == null)||("".equals(formatValue.trim()))) ? 
						"blank_cell" : "output_cell" %>'>
				<%=formatValue%>
			</div>	
		<%
		longValue = null;
		formatValue = null;
		%>
  <%}%>
	

</td></tr></table>

<fieldset class="fieldsetUIG"  style="margin-top: 20px;">
<legend class="legendUIG">
<%=resourceBundleHandler.gettingValueFromBundle("Service Unit Information")%>
</legend>
<table width='100%' align ='center' class ='tableFormat' cellspacing="5px">


<tr style='height:22px;'><td>

<%if ((new Byte((UNIT).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("UNIT")%>
</div>
<%}%>
</td>

<td>


<%if ((new Byte((sv.nps2103).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>
	
  		
		<%					
		if(!((sv.nps2103.getFormData()).toString()).trim().equalsIgnoreCase("")) { 	
					
							if(longValue == null || longValue.equalsIgnoreCase("")) {
								formatValue = formatValue( (sv.nps2103.getFormData()).toString()); 
							} else {
								formatValue = formatValue( longValue);
							}
							
							
					} else  {
								
					if(longValue == null || longValue.equalsIgnoreCase("")) {
								formatValue = formatValue( (sv.nps2103.getFormData()).toString()); 
							} else {
								formatValue = formatValue( longValue);
							}
					
					}
					%>			
				<div class='<%= ((formatValue == null)||("".equals(formatValue.trim()))) ? 
						"blank_cell" : "output_cell" %>'>
				<%=formatValue%>
			</div>	
		<%
		longValue = null;
		formatValue = null;
		%>
  <%}%>
	

</td>

<td>

<%if ((new Byte((UNIT_NAME).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("UNIT_NAME")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2104).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2104' 
type='text'

<%if((sv.nps2104).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2104.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2104.getLength()%>'
maxLength='<%=sv.nps2104.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2104).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2104).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2104).getColor()== null  ? 
			"input_cell" :  (sv.nps2104).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td></tr>

<tr style='height:22px;'><td>

<%if ((new Byte((DRIV_INST).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("DRIV_INST")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2105).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2105' 
type='text'

<%if((sv.nps2105).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2105.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2105.getLength()%>'
maxLength='<%=sv.nps2105.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2105).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2105).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2105).getColor()== null  ? 
			"input_cell" :  (sv.nps2105).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td>

</tr><tr style='height:22px;'><td>

<%if ((new Byte((CUST_SERVICE_PHONE).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("CUST_SERVICE_PHONE")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2106).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2106' 
type='text'

<%if((sv.nps2106).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2106.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2106.getLength()%>'
maxLength='<%=sv.nps2106.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2106).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2106).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2106).getColor()== null  ? 
			"input_cell" :  (sv.nps2106).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>




<%if ((new Byte((ALL_BRACKET_LENGTH_1).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("ALL_BRACKET_LENGTH_1")%>
</div>
<%}%>





<%if ((new Byte((sv.nps2107).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2107' 
type='text'

<%if((sv.nps2107).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2107.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2107.getLength()%>'
maxLength='<%=sv.nps2107.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2107).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2107).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2107).getColor()== null  ? 
			"input_cell" :  (sv.nps2107).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>




<%if ((new Byte((ALL_DASH_LENGTH_1).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("ALL_DASH_LENGTH_1")%>
</div>
<%}%>





<%if ((new Byte((sv.nps2108).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2108' 
type='text'

<%if((sv.nps2108).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2108.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2108.getLength()%>'
maxLength='<%=sv.nps2108.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2108).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2108).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2108).getColor()== null  ? 
			"input_cell" :  (sv.nps2108).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td>

</tr><tr style='height:22px;'><td>

<%if ((new Byte((REMARKS).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("REMARKS")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2109).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2109' 
type='text'

<%if((sv.nps2109).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2109.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2109.getLength()%>'
maxLength='<%=sv.nps2109.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2109).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2109).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2109).getColor()== null  ? 
			"input_cell" :  (sv.nps2109).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2110).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2110' 
type='text'

<%if((sv.nps2110).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2110.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2110.getLength()%>'
maxLength='<%=sv.nps2110.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2110).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2110).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2110).getColor()== null  ? 
			"input_cell" :  (sv.nps2110).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td>

</tr><tr style='height:22px;'><td>

<%if ((new Byte((EFFECTIVE_DATE).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("EFFECTIVE_DATE")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2111).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2111' 
type='text'

<%if((sv.nps2111).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2111.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2111.getLength()%>'
maxLength='<%=sv.nps2111.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2111).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2111).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2111).getColor()== null  ? 
			"input_cell" :  (sv.nps2111).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2112).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2112' 
type='text'

<%if((sv.nps2112).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2112.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2112.getLength()%>'
maxLength='<%=sv.nps2112.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2112).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2112).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2112).getColor()== null  ? 
			"input_cell" :  (sv.nps2112).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2113).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2113' 
type='text'

<%if((sv.nps2113).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2113.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2113.getLength()%>'
maxLength='<%=sv.nps2113.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2113).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2113).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2113).getColor()== null  ? 
			"input_cell" :  (sv.nps2113).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td>

<td>

<%if ((new Byte((EXPIRATION_DATE).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("EXPIRATION_DATE")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2114).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2114' 
type='text'

<%if((sv.nps2114).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2114.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2114.getLength()%>'
maxLength='<%=sv.nps2114.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2114).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2114).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2114).getColor()== null  ? 
			"input_cell" :  (sv.nps2114).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2115).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2115' 
type='text'

<%if((sv.nps2115).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2115.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2115.getLength()%>'
maxLength='<%=sv.nps2115.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2115).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2115).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2115).getColor()== null  ? 
			"input_cell" :  (sv.nps2115).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2116).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2116' 
type='text'

<%if((sv.nps2116).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2116.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2116.getLength()%>'
maxLength='<%=sv.nps2116.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2116).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2116).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2116).getColor()== null  ? 
			"input_cell" :  (sv.nps2116).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td></tr>

<tr style='height:22px;'><td>

<%if ((new Byte((MARKETING_ZONES).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("MARKETING_ZONES")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2117).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2117' 
type='text'

<%if((sv.nps2117).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2117.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2117.getLength()%>'
maxLength='<%=sv.nps2117.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2117).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2117).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2117).getColor()== null  ? 
			"input_cell" :  (sv.nps2117).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2118).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2118' 
type='text'

<%if((sv.nps2118).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2118.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2118.getLength()%>'
maxLength='<%=sv.nps2118.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2118).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2118).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2118).getColor()== null  ? 
			"input_cell" :  (sv.nps2118).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2119).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2119' 
type='text'

<%if((sv.nps2119).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2119.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2119.getLength()%>'
maxLength='<%=sv.nps2119.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2119).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2119).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2119).getColor()== null  ? 
			"input_cell" :  (sv.nps2119).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2120).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2120' 
type='text'

<%if((sv.nps2120).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2120.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2120.getLength()%>'
maxLength='<%=sv.nps2120.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2120).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2120).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2120).getColor()== null  ? 
			"input_cell" :  (sv.nps2120).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>





<%if ((new Byte((sv.nps2121).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2121' 
type='text'

<%if((sv.nps2121).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2121.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2121.getLength()%>'
maxLength='<%=sv.nps2121.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2121).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2121).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2121).getColor()== null  ? 
			"input_cell" :  (sv.nps2121).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td>

</tr><tr style='height:22px;'><td>

<%if ((new Byte((SCHEDULE_NO).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("SCHEDULE_NO")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2122).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2122' 
type='text'

<%if((sv.nps2122).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2122.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2122.getLength()%>'
maxLength='<%=sv.nps2122.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2122).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2122).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2122).getColor()== null  ? 
			"input_cell" :  (sv.nps2122).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td>

<td>

<%if ((new Byte((PRINT_INDICATOR).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) { %>
<div class="label_txt">
<%=resourceBundleHandler.gettingValueFromBundle("PRINT_INDICATOR")%>
</div>
<%}%>
</td>


<td>

<%if ((new Byte((sv.nps2123).getInvisible())).compareTo(new Byte(
								BaseScreenData.INVISIBLE)) != 0) {%>

<input name='NPS2123' 
type='text'

<%if((sv.nps2123).getClass().getSimpleName().equals("ZonedDecimalData")) {%>style="text-align: right"<% }%>

<%

		formatValue = (sv.nps2123.getFormData()).toString();

%>
	value='<%=formatValue%>' <%if(formatValue!=null && formatValue.trim().length()>0) {%> title='<%=formatValue%>' <%}%>

size='<%=sv.nps2123.getLength()%>'
maxLength='<%=sv.nps2123.getLength()%>' 
onFocus='doFocus(this)' onHelp='return fieldHelp(action)' onKeyUp='return checkMaxLength(this)' 


<% 
	if((new Byte((sv.nps2123).getEnabled()))
	.compareTo(new Byte(BaseScreenData.DISABLED)) == 0 || screenModel.getVariables().isScreenProtected()){ 
%>  
	readonly="true"
	class="output_cell"
<%
	}else if((new Byte((sv.nps2123).getHighLight())).
		compareTo(new Byte(BaseScreenData.BOLD)) == 0){
%>	
		class="bold_cell" 

<%
	}else { 
%>

	class = ' <%=(sv.nps2123).getColor()== null  ? 
			"input_cell" :  (sv.nps2123).getColor().equals("red") ? 
			"input_cell red reverse" : "input_cell" %>'
 
<%
	} 
%>
>
<%}%>
</td></tr></table></fieldset>

