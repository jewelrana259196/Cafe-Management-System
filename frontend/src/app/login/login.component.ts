import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { NgxUiLoaderService } from 'ngx-ui-loader';
import { SnackbarService } from '../services/snackbar.service';
import { UserService } from '../services/user.service';
import { GlobalConstants } from '../shared/global-constants';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  loginForm: any = FormGroup;
  responseMessage: any;
  snackbarService: any;

  constructor(private formBuilder: FormBuilder,
              private router: Router,
              private userService: UserService,
              private dialogRef: MatDialogRef<LoginComponent>,
              private ngxService: NgxUiLoaderService,
              private snakbarService: SnackbarService ) { }
  ngOnInit(): void {
    this.loginForm = this.formBuilder.group({
      email: [null, [Validators.required, Validators.pattern(GlobalConstants.emailRegex)]],
      password: [null, Validators.required]
    });
  }


  // tslint:disable-next-line:typedef
  handleSubmit(){
    this.ngxService.start();
    const formData = this.loginForm.value;
    const data = {
      email: formData.email,
      password: formData.password
    };
    this.userService.login(data).subscribe((response: any) => {
      this.ngxService.stop();
      this.dialogRef.close();
      localStorage.setItem('token', response.token);
      alert("Success")
      this.router.navigate(['/cafe/dashboard']);
  
      this.responseMessage = response?.message;
      this.snackbarService.openSnackBar(this.responseMessage, '');

    }, (error: any) => {
      this.ngxService.stop();
      if (error.error?.message){
        this.responseMessage = error.error?.message;
      }
      else{
        this.responseMessage = GlobalConstants.genericError;
      }
      this.snakbarService.openSnackBar(this.responseMessage, GlobalConstants.error);
    });
  }


}
