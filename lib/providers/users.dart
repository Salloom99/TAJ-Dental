
class Users{
  Map<String,String> _items = {
    'salem@gmail.com': '12345',
    'haitham': '12345',
  };

  get items {
    return {..._items};
  }
}