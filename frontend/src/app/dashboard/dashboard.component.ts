import { Component, AfterViewInit } from '@angular/core';
import { NgxUiLoaderService } from 'ngx-ui-loader';
import { DashboardService } from '../services/dashboard.service';
import { SnackbarService } from '../services/snackbar.service';
import { GlobalConstants } from '../shared/global-constants';

@Component({

selector: 'app-dashboard',

templateUrl: './dashboard.component.html',

styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements AfterViewInit {
responsMessage: any;
data: any;

ngAfterViewInit(): void { }

constructor(private dashboardService: DashboardService,
            private ngxService: NgxUiLoaderService,
            private snackbarService: SnackbarService) {
            this.ngxService.start();
            this.dashboardData();
}
dashboardData(){
    this.dashboardService.getDetails().subscribe((response: any)=>{
        this.ngxService.stop();
        this.data = response;
    },(error: any)=>{
        this.ngxService.stop();
        console.log(error);
        if(error.error?.message){
            this.responsMessage = error.error?.message;
        }
        else{
            this.responsMessage = GlobalConstants.genericError;
        }
        this.snackbarService.openSnackBar(this.responsMessage,GlobalConstants.error);
    })
}
}