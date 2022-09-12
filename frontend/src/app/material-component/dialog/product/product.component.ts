import { Component, EventEmitter, Inject, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { CategoryService } from 'src/app/services/category.service';
import { ProductService } from 'src/app/services/product.service';
import { SnackbarService } from 'src/app/services/snackbar.service';
import { GlobalConstants } from 'src/app/shared/global-constants';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent implements OnInit {


  titleName:string='';


  changeTitle(e:any){
   
    console.log("this is event "+e);
    
    this.titleName =e.target.value;
    
  }
  onAddProduct = new EventEmitter();
  onEditProduct = new EventEmitter();
  productForm: any = FormGroup;
  dialogAction: any = "Add";
  action: any = "Add";
  responseMessage: any;
  categories:any=[];

  constructor(@Inject(MAT_DIALOG_DATA) public dialogData: any,
  private formBuilder: FormBuilder,
  private productService: ProductService,
  public dialogRef: MatDialogRef<ProductComponent>,
  private catetoryService:CategoryService,
  private snackbarService: SnackbarService) { }

  ngOnInit(): void {
    this.productForm = this.formBuilder.group({
      name:[null,[Validators.required,Validators.pattern(GlobalConstants.nameRegex)]],
      categoryId:[null,Validators.required],
      price:[null,Validators.required],
      description:[null,Validators.required]
    })
    if(this.dialogData.action === 'Edit'){
      this.dialogAction = "Edit";
      this.action = "Update";
      this.productForm.patchValue(this.dialogData.data)
    }
    this.getCategorys();
  }

  getCategorys(){
    this.catetoryService.getCategorys().subscribe((response:any)=>{
      this.categories= response;
      console.log(this.categories[0].id);
      
     
    },(error:any)=>{
      if(error.error?.message){
        this.responseMessage = error.error?.manage;
      }
      else{
        this.responseMessage = GlobalConstants.genericError;
      }
      this.snackbarService.openSnackBar(this.responseMessage,GlobalConstants.error);
    })
  }
  
  handleSubmit() {
    if (this.dialogAction === "Edit") {
      this.edit();
    } else {
      // console.log(this.productForm.controls.categoryId);
      
      this.add();
    }

  }
  add() {
   var formData = this.productForm.value;
      console.log(formData);
      
     var data = {
      name:formData.name,
      categoryId:formData.categoryId,
      price:formData.price,
      description:formData.description,
     }
     console.log("Data "+data);
     
     this.productService.add(data).subscribe((response: any) => {
       this.dialogRef.close();
       this.onAddProduct.emit();
       this.responseMessage = response?.message;
       this.snackbarService.openSnackBar(this.responseMessage, 'success');
     }, (error: any) => {
      this.dialogRef.close();
      if (error.error?.manage) {
        this.responseMessage = error.error?.message;
      }else {
      this.responseMessage = GlobalConstants.genericError;
      }
      this.snackbarService.openSnackBar(this.responseMessage, GlobalConstants.error);
    })
  }

  edit() {
     var formData = this.productForm.value;
     var data = {
       id: this.dialogData.data.id,
       name: formData.name,
      
      categorryId: this.titleName,

       price: formData.price,
       description: formData.description
     }
    this.productService.update(data).subscribe((response: any) => {
      this.dialogRef.close();
      this.onEditProduct.emit();
      this.responseMessage = response?.message;
      this.snackbarService.openSnackBar(this.responseMessage, '');
    }, (error: any) => {
      this.dialogRef.close();
      if (error.error?.manage) {
        this.responseMessage = error.error?.message;
      }
      else {
        this.responseMessage = GlobalConstants.genericError;
      }
      this.snackbarService.openSnackBar(this.responseMessage, GlobalConstants.error);
    })
  }


}
