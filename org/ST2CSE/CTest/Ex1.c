#include <stdio.h>

#define NB_SAMPLES 10

float samples[NB_SAMPLES]={0.1, 0.77, 0.46, 0.34, 0.67, 0.09, 0.69, 0.73, 0.91, 0.64};




float somme(float *tab){
  float sum=0;
  for(int i=0;i < NB_SAMPLES; i++){
    sum+=tab[i];
  }
  return sum;
}


float moyenne(float *tab   ){

  
  

}

void main(){
   printf("La taile du tableau samples en éléments est %d\n\r ", NB_SAMPLES);
   printf("La taile du tableau samples en octet: %lu\n\r ", sizeof(samples));
   printf("La somme des éléments du : %lu\n\r ", sizeof(samples));

  

}
