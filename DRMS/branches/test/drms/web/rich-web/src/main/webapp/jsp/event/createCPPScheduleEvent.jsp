<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich"
	xmlns:h="http://java.sun.com/jsf/html" version="2.1">
	<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<head>
	<jsp:include page="/jsp/head.jsp" />
</head>

<f:view>
	<jsp:include page="/jsp/header_events.jsp" />
	<h:form id="form">
		<!-- When this page initialize invoke the JSF backing bean model refresh -->
		<div style="display:none;">
			<h:commandButton id="renewModelButton" value="renew" onclick="#{eventDataModel.renew}"/>
			<script type="text/javascript">
				var relativedComponent = document.getElementById("form:renewModelButton");
				if(relativedComponent){
					relativedComponent.onclick();
				}
			</script>
		</div>
		
		<!-- Validation Message Component -->
		<rich:spacer height="5px" width="700px"/>
		<h:messages layout="table" globalOnly="true" 
			infoClass="global-message-info" warnClass="global-message-warn" 
			errorClass="global-message-error" fatalClass="global-message-fatal"/>	
							
		<rich:spacer height="5px" width="700px"/>
		<!-- Event Basic Information Component -->
		<rich:panel styleClass="event-rich-panel">Program <h:outputText value="#{eventDataModel.programName}"/></rich:panel>
		<h:panelGrid columns="3" styleClass="event-panel-grid">
			<h:panelGroup>
				<p align="left">Event Date:</p>
			</h:panelGroup>
			<h:panelGroup>
				<rich:calendar value="#{eventDataModel.eventDate}" id="eventDateCalendar"  
				required="true" requiredMessage="Required"  popup="true" showApplyButton="false" 
				datePattern="#{applicationScope.dateFormat}" cellWidth="24px" cellHeight="22px" style="width:180px"/>	
			</h:panelGroup>
			<h:message for="eventDateCalendar" errorClass="message-error"  />
			
			
			<h:panelGroup>
				<p align="left">Start Time:</p>
			</h:panelGroup>
			<h:panelGroup>
				<h:selectOneMenu value="#{eventDataModel.startHour}">                     
                    <f:selectItems value="#{eventDataModel.hourList}"/> 
                </h:selectOneMenu>
				:
				<h:selectOneMenu value="#{eventDataModel.startMin}">                     
                    <f:selectItems value="#{eventDataModel.minList}"/> 
                </h:selectOneMenu>
				:
				<h:selectOneMenu value="#{eventDataModel.startSec}">                     
                    <f:selectItems value="#{eventDataModel.secList}"/> 
                </h:selectOneMenu>
			</h:panelGroup>
			<h:panelGroup>	
				
			</h:panelGroup>
			

			<h:panelGroup>
				<p align="left">End Time:</p>
			</h:panelGroup>
			<h:panelGroup>
				<h:selectOneMenu value="#{eventDataModel.endHour}">                     
                    <f:selectItems value="#{eventDataModel.hourList}"/> 
                </h:selectOneMenu>
				:
				<h:selectOneMenu value="#{eventDataModel.endMin}">                     
                    <f:selectItems value="#{eventDataModel.minList}"/> 
                </h:selectOneMenu>
				:
				<h:selectOneMenu value="#{eventDataModel.endSec}">                     
                    <f:selectItems value="#{eventDataModel.secList}"/> 
                </h:selectOneMenu>
			</h:panelGroup>
			<h:panelGroup>	
				
			</h:panelGroup>
			
		</h:panelGrid>

     
		<rich:spacer height="20px" width="700px" />
		<!-- Participant List waiting for choise which are the program contained -->


		<rich:spacer height="30px" width="700px" />
		
		<div style="text-align: center;">        
			<h:commandButton value="Create" action="#{eventDataModel.confirm}" title="Submit and Confirm Event"/>
			<h:commandButton value="Cancel" action="#{eventDataModel.cancel}" immediate="true" title="Cancel Submit and Confirm Event"/>
		</div>

	</h:form>
   <jsp:include page="/jsp/footer.jsp" />
</f:view>
</jsp:root>