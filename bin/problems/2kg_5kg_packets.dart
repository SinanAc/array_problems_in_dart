// ignore_for_file: file_names
void main(){
  int smallPack = 2;
  int bigPack = 5;
  int userNeed = 199;
  int mod = 0;
  if(userNeed<=0||userNeed==1||userNeed==3){
    print('Invalid value');
    return;
  }
  if(userNeed%bigPack==0){
    print('${userNeed/bigPack} packets of $bigPack kg');
    return;
  }else{
    mod = userNeed%bigPack;
    if(mod%smallPack==0){
      print('${(userNeed~/bigPack).toInt()} packets of $bigPack kg');
      print('${(mod~/smallPack).toInt()} packets of $smallPack kg');
      return;
    }
  }
  mod = userNeed%bigPack;
  if(mod==3){
    print('${((userNeed-8)~/bigPack).toInt()} packets of $bigPack kg');
    print('4 packets of $smallPack kg');
    return;
  }else if(mod==1){
    print('${((userNeed-6)~/bigPack).toInt()} packets of $bigPack kg');
    print('3 packets of $smallPack kg');
    return;
  }else{
    print('Invalid value');
  }
}
