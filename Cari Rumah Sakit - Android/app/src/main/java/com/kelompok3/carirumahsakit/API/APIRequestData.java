package com.kelompok3.carirumahsakit.API;

import com.kelompok3.carirumahsakit.Model.ResponseModel;

import retrofit2.Call;
import retrofit2.http.GET;

public interface APIRequestData {
    @GET("retrieve.php")
    Call<ResponseModel> ardRetrieveData();
}
