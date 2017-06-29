/*
 * www.akuacom.com - Automating Demand Response
 * 
 * org.openadr.dras.participantoperator.ParticipantOperator_Service.java - Copyright(c)1994 to 2010 by Akuacom . All rights reserved. 
 * Redistribution and use in source and binary forms, with or without modification, is prohibited.
 *
 */

package org.openadr.dras.participantoperator;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.1-b03-
 * Generated source version: 2.0
 */
@WebServiceClient(name = "ParticipantOperator", targetNamespace = "http://www.openadr.org/DRAS/ParticipantOperator/", wsdlLocation = "file:/C:/bin/pss2-4.3/pss2.utilopws.stubs/ParticipantOperator.wsdl")
public class ParticipantOperator_Service
    extends Service
{

    /** The Constant PARTICIPANTOPERATOR_WSDL_LOCATION. */
    private final static URL PARTICIPANTOPERATOR_WSDL_LOCATION;

    static {
        URL url = null;
        try {
            url = new URL("file:/C:/bin/pss2-4.3/pss2.utilopws.stubs/ParticipantOperator.wsdl");
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        PARTICIPANTOPERATOR_WSDL_LOCATION = url;
    }

    /**
     * Instantiates a new participant operator_ service.
     * 
     * @param wsdlLocation the wsdl location
     * @param serviceName the service name
     */
    public ParticipantOperator_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    /**
     * Instantiates a new participant operator_ service.
     */
    public ParticipantOperator_Service() {
        super(PARTICIPANTOPERATOR_WSDL_LOCATION, new QName("http://www.openadr.org/DRAS/ParticipantOperator/", "ParticipantOperator"));
    }

    /**
     * Gets the participant operator port.
     * 
     * @return the participant operator port
     * 
     * returns ParticipantOperator
     */
    @WebEndpoint(name = "ParticipantOperatorPort")
    public ParticipantOperator getParticipantOperatorPort() {
        return (ParticipantOperator)super.getPort(new QName("http://www.openadr.org/DRAS/ParticipantOperator/", "ParticipantOperatorPort"), ParticipantOperator.class);
    }

}