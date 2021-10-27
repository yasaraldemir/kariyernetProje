# kariyernetProje

Projenin içine .venv kurulmalıdır ve içerisine aşağıdaki kütüphaneler eklenmelidir.

selenium
robotframework
robotframework-seleniumlibrary
robotframework-debugLibrary

Bitirme projesi dosya yapısı

Keywordlar /Resources -> PageObject -> Keyword dosyaları içerisinde
Test Case Keywordsları /Resources -> PageObject -> TestCases içerisinde
Test Caseler /Tests dosyası içerisindedir.

Bitirme projesindeki tüm test caseleri çalıştırmak için;

    robot -d report Tests/filterTest.robot

Bitirme projesindeki "kariyernet fiter" test case'ini çalıştırmak için;

    robot -d report -t "kariyetnet filter" Tests/filterTest.robot

Bitirme projesindeki "kariyernet filter cleaning" test case'ini çalışırmak için;

    robot -d report -t "kariyernet filter cleaning" Tests/filterTest.robot


    
