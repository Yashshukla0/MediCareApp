<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Health Information</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Health App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="mb-4">Add Health Information</h2>
        <form:form action="addAndPredict" modelAttribute="PremiumEntity">
            <div class="form-group row">
                <form:label path="age" class="col-sm-2 col-form-label">Age:</form:label>
                <div class="col-sm-4">
                    <form:input path="age" type="number" class="form-control" required="true"/>
                </div>
                <form:label path="diabetes" class="col-sm-2 col-form-label">Diabetes:</form:label>
                <div class="col-sm-4">
                    <form:input path="diabetes" type="text" class="form-control" required="true"/>
                </div>
            </div>
            <div class="form-group row">
                <form:label path="anyTransplants" class="col-sm-2 col-form-label">Any Transplants:</form:label>
                <div class="col-sm-4">
                    <form:input path="anyTransplants" type="text" class="form-control" required="true"/>
                </div>
                <form:label path="anyChronicDiseases" class="col-sm-2 col-form-label">Any Chronic Diseases:</form:label>
                <div class="col-sm-4">
                    <form:input path="anyChronicDiseases" type="text" class="form-control" required="true"/>
                </div>
            </div>
            <div class="form-group row">
                <form:label path="height" class="col-sm-2 col-form-label">Height:</form:label>
                <div class="col-sm-4">
                    <form:input path="height" type="text" class="form-control" required="true"/>
                </div>
                <form:label path="weight" class="col-sm-2 col-form-label">Weight:</form:label>
                <div class="col-sm-4">
                    <form:input path="weight" type="text" class="form-control" required="true"/>
                </div>
            </div>
            <div class="form-group row">
                <form:label path="knownAllergies" class="col-sm-2 col-form-label">Known Allergies:</form:label>
                <div class="col-sm-4">
                    <form:input path="knownAllergies" type="text" class="form-control" required="true"/>
                </div>
                <form:label path="historyOfCancerInFamily" class="col-sm-2 col-form-label">History of Cancer in Family:</form:label>
                <div class="col-sm-4">
                    <form:input path="historyOfCancerInFamily" type="text" class="form-control" required="true"/>
                </div>
            </div>
            <div class="form-group row">
                <form:label path="numberOfMajorSurgeries" class="col-sm-2 col-form-label">Number of Major Surgeries:</form:label>
                <div class="col-sm-4">
                    <form:input path="numberOfMajorSurgeries" type="number" class="form-control" required="true"/>
                </div>
                <form:label path="bloodPressureProblems" class="col-sm-2 col-form-label">Blood Pressure Problems:</form:label>
                <div class="col-sm-4">
                    <form:input path="bloodPressureProblems" type="number" class="form-control" required="true"/>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-right">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form:form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
