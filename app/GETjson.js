var getJSON = function(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function() {
      var status = xhr.status;
      if (status === 200) {
        callback(null, xhr.response);
      } else {
        callback(status, xhr.response);
      }
    };
    xhr.send();
};

url="http://localhost:4004/catalog/Inhabitants";

alert("Hallo");

myJson = getJSON(url,
function(err, data) {
  if (err !== null) {
    alert('Something went wrong: ' + err);
  } else {
    alert('Your query count: ' + data.query.count);
  }
});

var mockDataForThisTest = "json=" + encodeURI(JSON.stringify(myJson));

//var app = angular.module('myApp', []);

function AdressbookCtrl($scope, $http) {

    $scope.adressbook = mockDataForThisTest;

    /*$scope.loadPeople = function() {
        var httpRequest = $http({
            method: 'POST',
            url: '/echo/json/',
            data: mockDataForThisTest

        }).success(function(data, status) {
            alert(data);
            $scope.adressbook = data;
        });

    };*/

}