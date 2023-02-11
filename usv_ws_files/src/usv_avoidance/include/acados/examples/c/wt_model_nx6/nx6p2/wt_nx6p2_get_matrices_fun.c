/* This file was automatically generated by CasADi.
   The CasADi copyright holders make no ownership claim of its contents. */
#ifdef __cplusplus
extern "C" {
#endif

/* How to prefix internal symbols */
#ifdef CODEGEN_PREFIX
  #define NAMESPACE_CONCAT(NS, ID) _NAMESPACE_CONCAT(NS, ID)
  #define _NAMESPACE_CONCAT(NS, ID) NS ## ID
  #define CASADI_PREFIX(ID) NAMESPACE_CONCAT(CODEGEN_PREFIX, ID)
#else
  #define CASADI_PREFIX(ID) wt_nx6p2_get_matrices_fun_ ## ID
#endif

#include <math.h>

#ifndef casadi_real
#define casadi_real double
#endif

#ifndef casadi_int
#define casadi_int int
#endif

/* Add prefix to internal symbols */
#define casadi_f0 CASADI_PREFIX(f0)
#define casadi_s0 CASADI_PREFIX(s0)
#define casadi_s1 CASADI_PREFIX(s1)
#define casadi_s2 CASADI_PREFIX(s2)
#define casadi_s3 CASADI_PREFIX(s3)
#define casadi_s4 CASADI_PREFIX(s4)
#define casadi_s5 CASADI_PREFIX(s5)
#define casadi_s6 CASADI_PREFIX(s6)
#define casadi_s7 CASADI_PREFIX(s7)

/* Symbol visibility in DLLs */
#ifndef CASADI_SYMBOL_EXPORT
  #if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
    #if defined(STATIC_LINKED)
      #define CASADI_SYMBOL_EXPORT
    #else
      #define CASADI_SYMBOL_EXPORT __declspec(dllexport)
    #endif
  #elif defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
    #define CASADI_SYMBOL_EXPORT __attribute__ ((visibility ("default")))
  #else
    #define CASADI_SYMBOL_EXPORT
  #endif
#endif

static const casadi_int casadi_s0[5] = {1, 1, 0, 1, 0};
static const casadi_int casadi_s1[75] = {8, 8, 0, 8, 16, 24, 32, 40, 48, 56, 64, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7};
static const casadi_int casadi_s2[21] = {8, 2, 0, 8, 16, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7};
static const casadi_int casadi_s3[12] = {8, 1, 0, 8, 0, 1, 2, 3, 4, 5, 6, 7};
static const casadi_int casadi_s4[51] = {5, 8, 0, 5, 10, 15, 20, 25, 30, 35, 40, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4, 0, 1, 2, 3, 4};
static const casadi_int casadi_s5[3] = {5, 0, 0};
static const casadi_int casadi_s6[5] = {0, 2, 0, 0, 0};
static const casadi_int casadi_s7[3] = {0, 0, 0};

/* wt_nx6p2_get_matrices_fun:(i0)->(o0[8x8],o1[8x2],o2[8],o3[8x8],o4[5x8],o5[5x8],o6[5x0],o7[0x2],o8[],o9[8],o10[]) */
static int casadi_f0(const casadi_real** arg, casadi_real** res, casadi_int* iw, casadi_real* w, void* mem) {
  casadi_real a0, a1, a2;
  a0=0.;
  if (res[0]!=0) res[0][0]=a0;
  if (res[0]!=0) res[0][1]=a0;
  a1=1.;
  if (res[0]!=0) res[0][2]=a1;
  if (res[0]!=0) res[0][3]=a0;
  if (res[0]!=0) res[0][4]=a0;
  if (res[0]!=0) res[0][5]=a0;
  if (res[0]!=0) res[0][6]=a0;
  if (res[0]!=0) res[0][7]=a0;
  a2=1.5311917180143535e+00;
  if (res[0]!=0) res[0][8]=a2;
  if (res[0]!=0) res[0][9]=a0;
  if (res[0]!=0) res[0][10]=a0;
  if (res[0]!=0) res[0][11]=a1;
  if (res[0]!=0) res[0][12]=a0;
  if (res[0]!=0) res[0][13]=a0;
  if (res[0]!=0) res[0][14]=a0;
  if (res[0]!=0) res[0][15]=a0;
  if (res[0]!=0) res[0][16]=a0;
  if (res[0]!=0) res[0][17]=a0;
  if (res[0]!=0) res[0][18]=a0;
  if (res[0]!=0) res[0][19]=a0;
  if (res[0]!=0) res[0][20]=a0;
  if (res[0]!=0) res[0][21]=a0;
  if (res[0]!=0) res[0][22]=a0;
  if (res[0]!=0) res[0][23]=a0;
  a2=2.1376003035282697e+01;
  if (res[0]!=0) res[0][24]=a2;
  if (res[0]!=0) res[0][25]=a0;
  if (res[0]!=0) res[0][26]=a0;
  if (res[0]!=0) res[0][27]=a0;
  if (res[0]!=0) res[0][28]=a0;
  if (res[0]!=0) res[0][29]=a0;
  if (res[0]!=0) res[0][30]=a0;
  if (res[0]!=0) res[0][31]=a0;
  if (res[0]!=0) res[0][32]=a0;
  if (res[0]!=0) res[0][33]=a0;
  if (res[0]!=0) res[0][34]=a0;
  if (res[0]!=0) res[0][35]=a0;
  a2=-2.5000000000000000e+00;
  if (res[0]!=0) res[0][36]=a2;
  if (res[0]!=0) res[0][37]=a0;
  if (res[0]!=0) res[0][38]=a0;
  if (res[0]!=0) res[0][39]=a0;
  a2=-2.3897923837070362e-02;
  if (res[0]!=0) res[0][40]=a2;
  if (res[0]!=0) res[0][41]=a0;
  if (res[0]!=0) res[0][42]=a0;
  if (res[0]!=0) res[0][43]=a0;
  if (res[0]!=0) res[0][44]=a0;
  a2=-50.;
  if (res[0]!=0) res[0][45]=a2;
  if (res[0]!=0) res[0][46]=a0;
  if (res[0]!=0) res[0][47]=a0;
  if (res[0]!=0) res[0][48]=a0;
  if (res[0]!=0) res[0][49]=a0;
  if (res[0]!=0) res[0][50]=a0;
  if (res[0]!=0) res[0][51]=a0;
  a2=2.5000000000000000e+00;
  if (res[0]!=0) res[0][52]=a2;
  if (res[0]!=0) res[0][53]=a0;
  if (res[0]!=0) res[0][54]=a0;
  if (res[0]!=0) res[0][55]=a0;
  if (res[0]!=0) res[0][56]=a0;
  if (res[0]!=0) res[0][57]=a0;
  if (res[0]!=0) res[0][58]=a0;
  if (res[0]!=0) res[0][59]=a0;
  if (res[0]!=0) res[0][60]=a0;
  a2=50.;
  if (res[0]!=0) res[0][61]=a2;
  if (res[0]!=0) res[0][62]=a0;
  if (res[0]!=0) res[0][63]=a0;
  if (res[1]!=0) res[1][0]=a0;
  if (res[1]!=0) res[1][1]=a0;
  if (res[1]!=0) res[1][2]=a0;
  if (res[1]!=0) res[1][3]=a0;
  if (res[1]!=0) res[1][4]=a0;
  if (res[1]!=0) res[1][5]=a0;
  if (res[1]!=0) res[1][6]=a1;
  if (res[1]!=0) res[1][7]=a0;
  if (res[1]!=0) res[1][8]=a0;
  if (res[1]!=0) res[1][9]=a0;
  if (res[1]!=0) res[1][10]=a0;
  if (res[1]!=0) res[1][11]=a0;
  if (res[1]!=0) res[1][12]=a0;
  if (res[1]!=0) res[1][13]=a0;
  if (res[1]!=0) res[1][14]=a0;
  if (res[1]!=0) res[1][15]=a1;
  if (res[2]!=0) res[2][0]=a0;
  if (res[2]!=0) res[2][1]=a1;
  if (res[2]!=0) res[2][2]=a0;
  if (res[2]!=0) res[2][3]=a0;
  if (res[2]!=0) res[2][4]=a0;
  if (res[2]!=0) res[2][5]=a0;
  if (res[2]!=0) res[2][6]=a0;
  if (res[2]!=0) res[2][7]=a0;
  if (res[3]!=0) res[3][0]=a1;
  if (res[3]!=0) res[3][1]=a0;
  if (res[3]!=0) res[3][2]=a0;
  if (res[3]!=0) res[3][3]=a0;
  if (res[3]!=0) res[3][4]=a0;
  if (res[3]!=0) res[3][5]=a0;
  if (res[3]!=0) res[3][6]=a0;
  if (res[3]!=0) res[3][7]=a0;
  if (res[3]!=0) res[3][8]=a0;
  if (res[3]!=0) res[3][9]=a1;
  if (res[3]!=0) res[3][10]=a0;
  if (res[3]!=0) res[3][11]=a0;
  if (res[3]!=0) res[3][12]=a0;
  if (res[3]!=0) res[3][13]=a0;
  if (res[3]!=0) res[3][14]=a0;
  if (res[3]!=0) res[3][15]=a0;
  if (res[3]!=0) res[3][16]=a0;
  if (res[3]!=0) res[3][17]=a0;
  if (res[3]!=0) res[3][18]=a1;
  if (res[3]!=0) res[3][19]=a0;
  if (res[3]!=0) res[3][20]=a0;
  if (res[3]!=0) res[3][21]=a0;
  if (res[3]!=0) res[3][22]=a0;
  if (res[3]!=0) res[3][23]=a0;
  if (res[3]!=0) res[3][24]=a0;
  if (res[3]!=0) res[3][25]=a0;
  if (res[3]!=0) res[3][26]=a0;
  if (res[3]!=0) res[3][27]=a1;
  if (res[3]!=0) res[3][28]=a0;
  if (res[3]!=0) res[3][29]=a0;
  if (res[3]!=0) res[3][30]=a0;
  if (res[3]!=0) res[3][31]=a0;
  if (res[3]!=0) res[3][32]=a0;
  if (res[3]!=0) res[3][33]=a0;
  if (res[3]!=0) res[3][34]=a0;
  if (res[3]!=0) res[3][35]=a0;
  if (res[3]!=0) res[3][36]=a1;
  if (res[3]!=0) res[3][37]=a0;
  if (res[3]!=0) res[3][38]=a0;
  if (res[3]!=0) res[3][39]=a0;
  if (res[3]!=0) res[3][40]=a0;
  if (res[3]!=0) res[3][41]=a0;
  if (res[3]!=0) res[3][42]=a0;
  if (res[3]!=0) res[3][43]=a0;
  if (res[3]!=0) res[3][44]=a0;
  if (res[3]!=0) res[3][45]=a1;
  if (res[3]!=0) res[3][46]=a0;
  if (res[3]!=0) res[3][47]=a0;
  if (res[3]!=0) res[3][48]=a0;
  if (res[3]!=0) res[3][49]=a0;
  if (res[3]!=0) res[3][50]=a0;
  if (res[3]!=0) res[3][51]=a0;
  if (res[3]!=0) res[3][52]=a0;
  if (res[3]!=0) res[3][53]=a0;
  if (res[3]!=0) res[3][54]=a1;
  if (res[3]!=0) res[3][55]=a0;
  if (res[3]!=0) res[3][56]=a0;
  if (res[3]!=0) res[3][57]=a0;
  if (res[3]!=0) res[3][58]=a0;
  if (res[3]!=0) res[3][59]=a0;
  if (res[3]!=0) res[3][60]=a0;
  if (res[3]!=0) res[3][61]=a0;
  if (res[3]!=0) res[3][62]=a0;
  if (res[3]!=0) res[3][63]=a1;
  if (res[4]!=0) res[4][0]=a1;
  if (res[4]!=0) res[4][1]=a0;
  if (res[4]!=0) res[4][2]=a0;
  if (res[4]!=0) res[4][3]=a0;
  if (res[4]!=0) res[4][4]=a0;
  if (res[4]!=0) res[4][5]=a0;
  if (res[4]!=0) res[4][6]=a1;
  if (res[4]!=0) res[4][7]=a0;
  if (res[4]!=0) res[4][8]=a0;
  if (res[4]!=0) res[4][9]=a0;
  if (res[4]!=0) res[4][10]=a0;
  if (res[4]!=0) res[4][11]=a0;
  if (res[4]!=0) res[4][12]=a1;
  if (res[4]!=0) res[4][13]=a0;
  if (res[4]!=0) res[4][14]=a0;
  if (res[4]!=0) res[4][15]=a0;
  if (res[4]!=0) res[4][16]=a0;
  if (res[4]!=0) res[4][17]=a0;
  if (res[4]!=0) res[4][18]=a1;
  if (res[4]!=0) res[4][19]=a0;
  if (res[4]!=0) res[4][20]=a0;
  if (res[4]!=0) res[4][21]=a0;
  if (res[4]!=0) res[4][22]=a0;
  if (res[4]!=0) res[4][23]=a0;
  if (res[4]!=0) res[4][24]=a1;
  if (res[4]!=0) res[4][25]=a0;
  if (res[4]!=0) res[4][26]=a0;
  if (res[4]!=0) res[4][27]=a0;
  if (res[4]!=0) res[4][28]=a0;
  if (res[4]!=0) res[4][29]=a0;
  if (res[4]!=0) res[4][30]=a0;
  if (res[4]!=0) res[4][31]=a0;
  if (res[4]!=0) res[4][32]=a0;
  if (res[4]!=0) res[4][33]=a0;
  if (res[4]!=0) res[4][34]=a0;
  if (res[4]!=0) res[4][35]=a0;
  if (res[4]!=0) res[4][36]=a0;
  if (res[4]!=0) res[4][37]=a0;
  if (res[4]!=0) res[4][38]=a0;
  if (res[4]!=0) res[4][39]=a0;
  if (res[5]!=0) res[5][0]=a0;
  if (res[5]!=0) res[5][1]=a0;
  if (res[5]!=0) res[5][2]=a0;
  if (res[5]!=0) res[5][3]=a0;
  if (res[5]!=0) res[5][4]=a0;
  if (res[5]!=0) res[5][5]=a0;
  if (res[5]!=0) res[5][6]=a0;
  if (res[5]!=0) res[5][7]=a0;
  if (res[5]!=0) res[5][8]=a0;
  if (res[5]!=0) res[5][9]=a0;
  if (res[5]!=0) res[5][10]=a0;
  if (res[5]!=0) res[5][11]=a0;
  if (res[5]!=0) res[5][12]=a0;
  if (res[5]!=0) res[5][13]=a0;
  if (res[5]!=0) res[5][14]=a0;
  if (res[5]!=0) res[5][15]=a0;
  if (res[5]!=0) res[5][16]=a0;
  if (res[5]!=0) res[5][17]=a0;
  if (res[5]!=0) res[5][18]=a0;
  if (res[5]!=0) res[5][19]=a0;
  if (res[5]!=0) res[5][20]=a0;
  if (res[5]!=0) res[5][21]=a0;
  if (res[5]!=0) res[5][22]=a0;
  if (res[5]!=0) res[5][23]=a0;
  if (res[5]!=0) res[5][24]=a0;
  if (res[5]!=0) res[5][25]=a0;
  if (res[5]!=0) res[5][26]=a0;
  if (res[5]!=0) res[5][27]=a0;
  if (res[5]!=0) res[5][28]=a0;
  if (res[5]!=0) res[5][29]=a0;
  if (res[5]!=0) res[5][30]=a0;
  if (res[5]!=0) res[5][31]=a0;
  if (res[5]!=0) res[5][32]=a0;
  if (res[5]!=0) res[5][33]=a0;
  if (res[5]!=0) res[5][34]=a0;
  if (res[5]!=0) res[5][35]=a0;
  if (res[5]!=0) res[5][36]=a0;
  if (res[5]!=0) res[5][37]=a0;
  if (res[5]!=0) res[5][38]=a0;
  if (res[5]!=0) res[5][39]=a0;
  if (res[9]!=0) res[9][0]=a0;
  if (res[9]!=0) res[9][1]=a0;
  if (res[9]!=0) res[9][2]=a0;
  if (res[9]!=0) res[9][3]=a0;
  if (res[9]!=0) res[9][4]=a0;
  if (res[9]!=0) res[9][5]=a0;
  if (res[9]!=0) res[9][6]=a0;
  if (res[9]!=0) res[9][7]=a0;
  return 0;
}

CASADI_SYMBOL_EXPORT int wt_nx6p2_get_matrices_fun(const casadi_real** arg, casadi_real** res, casadi_int* iw, casadi_real* w, void* mem){
  return casadi_f0(arg, res, iw, w, mem);
}

CASADI_SYMBOL_EXPORT void wt_nx6p2_get_matrices_fun_incref(void) {
}

CASADI_SYMBOL_EXPORT void wt_nx6p2_get_matrices_fun_decref(void) {
}

CASADI_SYMBOL_EXPORT casadi_int wt_nx6p2_get_matrices_fun_n_in(void) { return 1;}

CASADI_SYMBOL_EXPORT casadi_int wt_nx6p2_get_matrices_fun_n_out(void) { return 11;}

CASADI_SYMBOL_EXPORT const char* wt_nx6p2_get_matrices_fun_name_in(casadi_int i){
  switch (i) {
    case 0: return "i0";
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const char* wt_nx6p2_get_matrices_fun_name_out(casadi_int i){
  switch (i) {
    case 0: return "o0";
    case 1: return "o1";
    case 2: return "o2";
    case 3: return "o3";
    case 4: return "o4";
    case 5: return "o5";
    case 6: return "o6";
    case 7: return "o7";
    case 8: return "o8";
    case 9: return "o9";
    case 10: return "o10";
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const casadi_int* wt_nx6p2_get_matrices_fun_sparsity_in(casadi_int i) {
  switch (i) {
    case 0: return casadi_s0;
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const casadi_int* wt_nx6p2_get_matrices_fun_sparsity_out(casadi_int i) {
  switch (i) {
    case 0: return casadi_s1;
    case 1: return casadi_s2;
    case 2: return casadi_s3;
    case 3: return casadi_s1;
    case 4: return casadi_s4;
    case 5: return casadi_s4;
    case 6: return casadi_s5;
    case 7: return casadi_s6;
    case 8: return casadi_s7;
    case 9: return casadi_s3;
    case 10: return casadi_s7;
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT int wt_nx6p2_get_matrices_fun_work(casadi_int *sz_arg, casadi_int* sz_res, casadi_int *sz_iw, casadi_int *sz_w) {
  if (sz_arg) *sz_arg = 1;
  if (sz_res) *sz_res = 11;
  if (sz_iw) *sz_iw = 0;
  if (sz_w) *sz_w = 0;
  return 0;
}


#ifdef __cplusplus
} /* extern "C" */
#endif
