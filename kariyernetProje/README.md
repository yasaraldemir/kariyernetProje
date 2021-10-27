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

Toolsqa PracticeForm ödevi için;
    
    robot -d report filterTests/practiceFormTest.robot

Amazon filter test ödevi için;
    
    robot -d reports filterTests/filterTest.robot

Amazon register test ödevi tüm caseler için;

    robot -d report filterTests/registerTest.robot

Amazon register ödevi "empty input register" test case'i için;

    robot -d reports -t "input register missmatched" filterTests/registerTest.robot

Amazon register ödevi "input register missmatched" test case'i için;

    robot -d reports -t "input register missmatched" filterTests/registerTest.robot 

Amazon login ödevi tüm caseler için;

    robot -d report filterTests/signupTest.robot

Amazon login ödevi "login successfull" test case'i için;

    robot -d report -t "login successfull" filterTests/signupTest.robot

Amazon login ödevi "login unsuccessfull" test case'i için;
    
    robot -d report -t "login unsuccessfull" filterTests/signupTest.robot

isinolsun filter test için;

    robot -d report TestCases/FilterTest.robot

isinolsun homepage scroll test için;

    robot -d report TestCases/HomepageScrollTest.robot

isinolsun position location test için;

    robot -d report TestCases/PositionLocationSearchTest.robot
    