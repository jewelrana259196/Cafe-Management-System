import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  url = environment.apiUrl;

  constructor(private httpClient: HttpClient) { }

  // tslint:disable-next-line:typedef
  signup(data: any) {
    return this.httpClient.post(this.url +
      '/user/signup', data, {
        headers: new HttpHeaders().set('Content-Type', 'application/json')
      });
  }

  // tslint:disable-next-line:typedef
  forgotPassword(data: any) {
    return this.httpClient.post(this.url +
      '/user/forgotPassword/', data, {
        headers: new HttpHeaders().set('Content-Type', 'application/json')
      });
  }

  login(data: any): any {
    return this.httpClient.post(this.url + '/user/login/', data, {
        headers: new HttpHeaders().set('Content-Type', 'application/json')
      });
  }

checkToken(): any{
  return this.httpClient.get(this.url + '/user/checkToken');

  }
  changPassword(data: any){
    return this.httpClient.post(this.url+
      "/user/changPassword",data,{
        headers: new HttpHeaders().set('Content-Type',"application/json")
      })
  }
}
