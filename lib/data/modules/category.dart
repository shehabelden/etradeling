


class Category{
  String? name;
  String? image;
  Map<String, dynamic>? sub;
  List<String>? keys;

  Category({ this.name,  this.sub, this.keys,this.image});

  fromMap(Map<String, dynamic> map){
    return Category(
        name: map['name'],
        image:map['image'] ,
        sub: map['sub'],
        keys: map['sub']==null?null:map['sub'].keys.toList()
    );
  }
}

