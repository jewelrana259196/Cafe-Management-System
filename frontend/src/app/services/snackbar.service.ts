
import { Injectable } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';

@Injectable({
  providedIn: 'root',
})
export class SnackbarService {
  constructor(private Snackbar: MatSnackBar) {}

  // tslint:disable-next-line:typedef
  openSnackBar(Message: string, action: string) {
    if (action === 'error') {
      this.Snackbar.open(Message, '', {
        horizontalPosition: 'center',
        verticalPosition: 'top',
        duration: 2000,
        panelClass: ['black-snakbar'],
      });
    } else {
      this.Snackbar.open(Message, '', {
        horizontalPosition: 'center',
        verticalPosition: 'top',
        duration: 2000,
        panelClass: ['green-snakbar'],
      });
    }
  }
}
