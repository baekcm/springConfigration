<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<style>
    #results li.pass {
        color : green;
    }
    #results li.fail {
        color : red;
    }
</style>

</head>
<body>

	<ul id="results"></ul>

	<script type="text/javascript">

        (function($){

            var queue = [], paused = false, results;
            this.test = function(name, fn) {
                queue.push(function() {
                    results = document.getElementById("results");
                    results = assert(true, name).appendChild(document.createElement("ul"));
                    fn();
                });
                runTest();
            };

            this.pause = function() {
                paused = true;
            };

            this.resume = function() {
                paused = false;
                setTimeout(runTest, 1);
            };

            function runTest() {
                if(!paused && queue.length) {
                    queue.shift();
                    if(!paused) {
                        resume();
                    }
                }
            }

            this.assert = function assert(value, desc) {
                var li = document.createElement("li");
                li.className = value ? "pass" : "fail";
                li.appendChild(document.createTextNode(desc));
                results.appendChild(li);

                if(!value) {
                    li.parentNode.parentNode.className = "fail";
                }

                return li;
            }

        })(jQuery);


        window.onload = function() {
            test("Async Test #1", function() {
                pause();
                setTimeout(function() {
                    assert(true, "First test completed");
                    resume();
                }, 1000);
            });

            test("Async Test #2", function() {
                pause();
                setTimeout(function() {
                    assert(true, "Second test completed");
                    resume();
                }, 1000);
            });
        };

	</script>

</body>
</html>