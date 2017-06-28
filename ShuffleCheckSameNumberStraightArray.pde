void setup(){
  int [] array={1,2,3,4,5,1,2,3,4,5,1,2,3,4,5};
  array=shuffleArray(array);
  array=checkArray(array);
  printArray(array);
}

int [] shuffleArray(int [] array){
  int [] return_array=array;
  for(int i=0; i<100; i++){
    int s1=(int)random(0,return_array.length);
    int s2=(int)random(0,return_array.length);
    int temp=return_array[s1];
    return_array[s1]=return_array[s2];
    return_array[s2]=temp;
  }
  return return_array;
}

int [] checkArray(int [] array){
  int [] return_array=array;
  int previous_num=return_array[0];//1個前の配列の数を格納する
  for(int i=1; i<return_array.length; i++){
    if(previous_num==return_array[i]){//1個前と同じ数だったらそれをどこかと変更する
      int rand=(int)random(0,return_array.length);
      int temp=return_array[i];
      return_array[i]=return_array[rand];
      return_array[rand]=temp;
      return checkArray(return_array);
    }
    previous_num=return_array[i];
  }
  return return_array;
}