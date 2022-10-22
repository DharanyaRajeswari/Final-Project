import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { HttpClientModule } from '@angular/common/http';
import { ProductFormComponent } from './components/product-form/product-form.component';
import { ProductListComponent } from './components/product-list/product-list.component';
import { SearchComponent } from './components/search/search.component';
import { WelcomeComponent } from './components/welcome/welcome.component';
import { Router, RouterEvent, RouterModule, Routes } from '@angular/router';
const routes:Routes=[{path:'',component:WelcomeComponent},{path:'product',component:ProductListComponent},{path:'productform',component:ProductFormComponent},{path : 'updateProduct/:elproduct_id',component:ProductFormComponent},{path : 'search/:pname',component:ProductListComponent}]
@NgModule({
  declarations: [
    AppComponent,
    ProductFormComponent,
    ProductListComponent,
    SearchComponent,
    WelcomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    RouterModule.forRoot(routes),
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
