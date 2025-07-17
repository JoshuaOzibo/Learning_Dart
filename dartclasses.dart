void main(){
    // Create Person class
    Person


    print();
};

class Person{
    String? name, sex;
    int? age;

    // Constructors
    Person(String name, sex, int age){
        this.name = name;
        this.sex = sex;
        this.age = age;
    };

    void showData(){
        print("Name = $name");
        print("Sex = $sex");
        print("Age = $age");
    }
}