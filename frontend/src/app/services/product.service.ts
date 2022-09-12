import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  getProducts() {
    throw new Error('Method not implemented.');
  }
  url = environment.apiUrl;

  constructor(private httpClient: HttpClient) { }

  add(data: any) {
    
    return this.httpClient.post(this.url +
      "/product/add/", data, {
      headers: new HttpHeaders().set('Content-Type', "application/json")
    })
  }
  update(data: any) {
    console.log(data);
    
    return this.httpClient.post(this.url +
      "/product/update/", data, {
      headers: new HttpHeaders().set('Content-Type', "application/json")
    })
  }

  getProduct() {

    return this.httpClient.get(this.url + "/product/get/")
  }
  updateStatus(data: any) {
    return this.httpClient.patch(this.url +
      "/product/updateStatus/", data, {
      headers: new HttpHeaders().set('Content-Type', "application/json")
    })
  }
  delete(id: any) {
    console.log(id)
    return this.httpClient.delete(this.url +
      "/product/delete/" + id, {
      headers: new HttpHeaders().set('Content-Type', "application/json")
    })
  }
  //date 27-8-22
  getProductsByCategory(id: any) {
    return this.httpClient.get(this.url + "/product/getByCategory/" + id);
  }
  getById(id: any) {
    return this.httpClient.get(this.url + "/product/getById/" + id);
  }
}
