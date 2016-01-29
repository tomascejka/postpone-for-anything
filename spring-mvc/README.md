# MVC
Zacinam a je potreba se do MVC ve Spring co nejrychleji dostat, zde je ucici krivka. Jak, co, kde jsem mel problemy/otazky.

## Official current docs
* http://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html

### Basics (**README**):
* http://websystique.com/spring-4-mvc-tutorial/
* http://www.javatpoint.com/spring-3-mvc-tutorial
* https://spring.io/guides/gs/serving-web-content/
* http://o7planning.org/web/fe/default/en/document/8108/spring-mvc-tutorial-for-beginners
* http://javahash.com/spring-4-mvc-hello-world-tutorial-full-example/
* http://www.mkyong.com/spring-mvc/spring-4-mvc-ajax-hello-world-example/
* http://www.mkyong.com/spring-mvc/gradle-spring-4-mvc-hello-world-example-annotation/

#### Examples:
* http://www.mkyong.com/spring-mvc/spring-3-mvc-and-xml-example/ (MVC+XML response)
* http://www.mkyong.com/spring-mvc/spring-3-mvc-and-json-example/ (MVC+JSON response)
* http://hmkcode.com/spring-mvc-return-json-using-responseboyd/ (MVC+JSON response)
* http://www.leveluplunch.com/java/tutorials/010-building-restful-webservice-spring-mvc-boot/ (REST)

### Q1 Exception handling in MVC
* https://spring.io/blog/2013/11/01/exception-handling-in-spring-mvc
* http://viralpatel.net/blogs/spring-mvc-exception-handling-controlleradvice-annotation/ (@ControllerAdvice)
* http://blog.codeleak.pl/2013/04/how-to-custom-error-pages-in-tomcat.html
* http://www.sporcic.org/2014/05/custom-error-pages-with-spring-boot/ (Spring BOOT, only for inspiration)

#### Examples:
* http://www.mkyong.com/spring-mvc/spring-mvc-exceptionhandler-example/
* http://www.mkyong.com/spring-mvc/spring-mvc-catch-the-exceptions-thrown-by-view-page/
* http://www.avajava.com/tutorials/lessons/how-do-i-create-a-jsp-error-page-to-handle-exceptions.html
* http://www.codejava.net/frameworks/spring/how-to-handle-exceptions-in-spring-mvc
* https://steveliles.github.io/configuring_global_exception_handling_in_spring_mvc.html

### Q2 How @ResponseBody works:
* http://www.javacodegeeks.com/2013/07/spring-mvc-requestbody-and-responsebody-demystified.html
* http://websystique.com/springmvc/spring-mvc-requestbody-responsebody-example/ (**README**)
* https://stackoverflow.com/questions/28646332/how-exactly-works-the-spring-responsebody-annotation-in-this-restful-applicatio
* https://stackoverflow.com/questions/26825276/spring-4-restcontroller-json-characteristics-not-acceptable-according-to-the-re
* https://en.wikipedia.org/wiki/Content_negotiation
 

### Q3 How logging in MVC (specially exception states)
* http://blog.teamextension.com/handling-exceptions-in-spring-mvc-with-logging-903

### Validators
* http://docs.spring.io/spring/docs/current/spring-framework-reference/html/validation.html
* http://hibernate.org/validator/documentation/getting-started/
* http://websystique.com/springmvc/spring-4-mvc-form-validation-with-hibernate-jsr-validator-resource-handling-using-annotations/
* http://www.mkyong.com/spring-mvc/spring-3-mvc-and-jsr303-valid-example/
* http://examples.javacodegeeks.com/enterprise-java/hibernate/hibernate-validator-example/
* http://www.journaldev.com/2668/spring-mvc-form-validation-example-using-annotation-and-custom-validator-implementation
* http://howtodoinjava.com/spring/spring-mvc/spring-bean-validation-example-with-jsr-303-annotations/
* http://codetutr.com/2013/05/28/spring-mvc-form-validation/
 

### Testing MVC Controllers
* http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/#spring-mvc-test-framework
* http://www.petrikainulainen.net/spring-mvc-test-tutorial/
* http://www.petrikainulainen.net/programming/spring-framework/unit-testing-of-spring-mvc-controllers-configuration/
* http://www.petrikainulainen.net/programming/spring-framework/unit-testing-of-spring-mvc-controllers-normal-controllers/
* http://www.petrikainulainen.net/programming/spring-framework/unit-testing-of-spring-mvc-controllers-rest-api/
* https://stackoverflow.com/questions/32052610/spring-unit-test-404-unknown-url-in-mock-mvc

#### Examples
* https://github.com/pkainulainen/spring-mvc-test-examples

## TEMPLATE BASED CODING
Chci do MVC zatahnout nejake sablony:
* Thymeleaf - (http://www.thymeleaf.org/)
* Trimou - http://trimou.org/
* Sitemesh  - http://wiki.sitemesh.org/wiki/display/sitemesh/Home (decorator pattern for UI)

### Integrace s MVC
* http://www.thymeleaf.org/doc/tutorials/2.1/thymeleafspring.html#preface (thymeleaf)
* http://trimou.org/doc/latest.html (Trimou, 5.6 Spring MVC integration)

##Examples:
* https://github.com/trimou/trimou/tree/master/examples (TRIMOU)
* https://github.com/Pitzcarraldo/spring-isomorphic-view-example (TRIMOU)
* https://dzone.com/articles/trimou-160-spring-mvc-and (TRIMOU)
* http://www.furkanzumrut.com/thymeleaf-spring-mvc-integration-example (Thymeleaf)
* https://github.com/thymeleaf/thymeleafexamples-petclinic (Thymeleaf + Service/Repository)

### Problems
* http://blog.flurdy.com/2010/07/jetty-tomcat-jsp.html

## Tools: Maven, Jetty, Tomcat
* https://tomcat.apache.org/maven-plugin-2.2/
* https://steveliles.github.io/setting_up_embedded_jetty_8_and_spring_mvc_with_maven.html
