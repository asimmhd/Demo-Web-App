<%@page import="com.csc.qre.bms.screen.BmsVarModel"%>
<%@page import="com.csc.qre.cics.variables.CICSAppVars"%>
<%@page import='com.quipoz.framework.util.*' %>
<%@page import='com.quipoz.framework.screenmodel.*' %>

		<%BaseModel bm3 = (BaseModel) request.getSession().getAttribute(BaseModel.SESSION_VARIABLE);
		  ScreenModel sm4Common2 = bm3.getScreenModel();
		%>
			<input type="hidden" name="<%=RequestParms.ACTION%>" value="PFKey00">
		    <input type="hidden" name="<%=RequestParms.SCREEN_NAME%>" value="<%=sm4Common2.getScreenName()%>"/>
		    <input type="hidden" name="<%=RequestParms.FOCUSFIELD%>" value="">
		    <input type="hidden" name="<%=RequestParms.FOCUSPREVF%>" value="">
		    <input type="hidden" name="<%=RequestParms.FOCUSNXTPR%>" value="">
		    <input type="hidden" name="<%=RequestParms.SEMAPHORE%>"  value="">
		    <input class="invisibleSubmit" type="SUBMIT" name="lastResort" value="Enter" onClick="if (document.activeElement.name != 'lastResort') {return false;}" onFocus="selectFirstField()" onMouseDown="selectCurrentField();return false"  onSelectStart="selectFirstField()" TABINDEX=32767>
		
		</form>
	
	<!--<script language='javaScript'>
	<%-- TODO To find replacements
	   	<%=CICSAppVars.hf.getScript4ValidKeys((BmsVarModel)sm4CommonScript2.getVariables())%> 
	    alerts = "<%=CICSAppVars.hf.formatMessageBox(sm4CommonScript2.getAlerts())%>";--%>
	    if (alerts != "") {
	      alert(alerts);
	      alerts = ""; 
	    }
	</script>
	
	-->
	<%sm4Common2.setFrameLoaded(2);%>
	</body>
</html>