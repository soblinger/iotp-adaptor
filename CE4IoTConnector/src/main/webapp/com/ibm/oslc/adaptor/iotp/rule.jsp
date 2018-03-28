<!DOCTYPE html>
<%--Start of user code "Copyright"
--%>
<%--
 Copyright (c) 2011, 2012, 2017 IBM Corporation and others.

 All rights reserved. This program and the accompanying materials
 are made available under the terms of the Eclipse Public License v1.0
 and Eclipse Distribution License v. 1.0 which accompanies this distribution.

 The Eclipse Public License is available at http://www.eclipse.org/legal/epl-v10.html
 and the Eclipse Distribution License is available at
 http://www.eclipse.org/org/documents/edl-v10.php.

 Contributors:

  Sam Padgett     - initial API and implementation
  Michael Fiedler - adapted for OSLC4J
  Jad El-khoury   - initial implementation of code generator (422448)
  Frédéric Loiret - Switch the template to Bootstrap (519699)
  Frédéric Loiret - Support for UI Preview (494303)
  Andrii Berezovskyi - Support for UI Preview (494303)

 This file is generated by org.eclipse.lyo.oslc4j.codegenerator
--%>
<%--End of user code--%>

<%--Start of user code "body"
--%>
<%--TODO: Replace/adjust this default content as necessary.
All manual changes in this "protected" user code area will NOT be overwritten upon subsequent code generations.
To revert to the default generated content, delete all content in this file, and then re-generate.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page import="org.eclipse.lyo.oslc4j.core.model.ServiceProvider"%>
<%@page import="java.util.List" %>
<%@page import="com.ibm.oslc.adaptor.iotp.resources.Rule"%>

<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>

<%
  Rule aRule = (Rule) request.getAttribute("aRule");
%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title><%= aRule.toString(true) %></title>

  <link href="<c:url value="/static/css/bootstrap-4.0.0-beta.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/static/css/adaptor.css"/>" rel="stylesheet">

  <script src="<c:url value="/static/js/jquery-3.2.1.min.js"/>"></script>
  <script src="<c:url value="/static/js/popper-1.11.0.min.js"/>"></script>
  <script src="<c:url value="/static/js/bootstrap-4.0.0-beta.min.js"/>"></script>
  <script src="<c:url value="/static/js/preview.js"/>"></script>

</head>


<body>

<nav class="navbar sticky-top navbar-light bg-light">
  <div class="container">
  <a class="navbar-brand" href="<c:url value="/services/catalog/singleton"/>">CE4IoTConnector</a>
  </div>
</nav>

<!-- Begin page content -->
<div class="container">
    <div class="page-header">
        <h1>Rule resource</h1>
        <p class="lead">URI:&nbsp;
      <a href="<%= aRule.getAbout() %>"><%= aRule.getAbout() %></a>
        </p>
    </div>
        <h2>Properties</h2>

        <div>
          <dl class="row">
            <dt  class="col-sm-2 text-right">condition</dt>
            <dd class="col-sm-9"><%= aRule.conditionToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">action</dt>
            <dd class="col-sm-9"><%= aRule.actionToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">description</dt>
            <dd class="col-sm-9"><%= aRule.descriptionToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">identifier</dt>
            <dd class="col-sm-9"><%= aRule.identifierToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">shortTitle</dt>
            <dd class="col-sm-9"><%= aRule.shortTitleToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">title</dt>
            <dd class="col-sm-9"><%= aRule.titleToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">contributor</dt>
            <dd class="col-sm-9"><%= aRule.contributorToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">creator</dt>
            <dd class="col-sm-9"><%= aRule.creatorToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">subject</dt>
            <dd class="col-sm-9"><%= aRule.subjectToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">created</dt>
            <dd class="col-sm-9"><%= aRule.createdToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">modified</dt>
            <dd class="col-sm-9"><%= aRule.modifiedToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">type</dt>
            <dd class="col-sm-9"><%= aRule.typeToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">discussedBy</dt>
            <dd class="col-sm-9"><%= aRule.discussedByToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">instanceShape</dt>
            <dd class="col-sm-9"><%= aRule.instanceShapeToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">serviceProvider</dt>
            <dd class="col-sm-9"><%= aRule.serviceProviderToHtml()%></dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">relation</dt>
            <dd class="col-sm-9"><%= aRule.relationToHtml()%></dd>
          </dl>
        </div>
      </div>
    </div>

  <footer class="footer">
    <div class="container">
      <p class="text-muted">
        OSLC Adaptor was generated using <a href="http://eclipse.org/lyo">Eclipse Lyo</a> 2.3.0-SNAPSHOT.
      </p>
    </div>
  </footer>
</body>
</html>
<%--End of user code--%>
