
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from '../services/user.service';
import { SnackbarService } from '../services/snackbar.service';
import { MatDialogRef } from '@angular/material/dialog';
import { NgxUiLoaderService } from 'ngx-ui-loader';
import { GlobalConstants } from '../shared/global-constants';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.scss']
})
export class SignupComponent implements OnInit {

  signupForm: any = FormGroup;
  responseMessage: any;

  constructor(private formBuider: FormBuilder, private router: Router,
              // tslint:disable-next-line:no-shadowed-variable
              private UserService: UserService,
              private snackbarService: SnackbarService,
              private dialogRef: MatDialogRef<SignupComponent>,
              private ngxService: NgxUiLoaderService) { }

  ngOnInit(): void {
    this.signupForm = this.formBuider.group({
      name: [ null, [Validators.required, Validators.pattern(GlobalConstants.nameRegex)]],
      email: [ null, [Validators.required, Validators.pattern(GlobalConstants.emailRegex)]],
      contactNumber: [ null, [Validators.required, Validators.pattern(GlobalConstants.contactNumberRegex)]],
      password: [ null, [Validators.required]],
    });
  }
    // tslint:disable-next-line:typedef
    handleSubmit(){
      this.ngxService.start();
      // tslint:disable-next-line:prefer-const
      let formData = this.signupForm.value;
      const dt = {
        name: formData.name,
        email: formData.email,
        contactNumber: formData.contactNumber,
        password: formData.password
      };

      this.UserService.signup(dt).subscribe((response: any) => {
        this.ngxService.stop();
        this.dialogRef.close();
        this.responseMessage = response?.message;
        this.snackbarService.openSnackBar(this.responseMessage, '');
        this.router.navigate(['/']);
      }, (error) => {
          this.ngxService.stop();
          if (error.error?.message)
          {
            this.responseMessage = error.error?.message;
          }
          else{
            this.responseMessage = GlobalConstants.genericError;
          }
          this.snackbarService.openSnackBar(this.responseMessage, GlobalConstants.error);
      });
    }
}
