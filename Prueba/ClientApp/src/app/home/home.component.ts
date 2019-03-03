import { Component,Inject,Pipe } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import Swal from 'sweetalert2';
import { FilterPipe } from '../filter.pipe';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
})
@Pipe({name:'FilterPipe'})
export class HomeComponent {
  
  headers = new HttpHeaders().set("content-type", "application/json");
  baseUrl:string;
  fichas;
  //
  apellidos:string;
  cedula:string;
  direccion:string;
  frances:boolean;
  id:number
  ingles:boolean;
  italiano:boolean;
  nombres:string;
  sexo:string;
  sueldo:number;
  //

constructor(private http:HttpClient, @Inject('BASE_URL') baseUrl: string) { 
    this.baseUrl=baseUrl;
    this.getFichas();
  }


  getFichas(){
    this.http.get(this.baseUrl + 'api/Home/Get',{headers:this.headers,responseType:'json'})
    .subscribe(res=>{
     this.fichas = res;
     console.table(this.fichas);
    },error => {
      console.error(error);
    });
  }

  setEdit(obj){
    this.id =obj.id; 
    this.apellidos=obj.apellidos;
    this.cedula=obj.cedula;
    this.direccion=obj.direccion;
    this.frances=obj.frances;
    this.ingles=obj.ingles;
    this.italiano=obj.italiano;
    this.nombres=obj.nombres;
    this.sexo=obj.sexo;
    this.sueldo=obj.sueldo;
  }
  setNew(){
    this.id=null;
    this.apellidos="";
    this.cedula="";
    this.direccion="";
    this.frances=null;
    this.ingles=null;
    this.italiano=null;
    this.nombres="";
    this.sexo=null;
    this.sueldo=null;
  }

  insertFicha(){
    var obj = {
      apellidos: this.apellidos,
      cedula: this.cedula,
      direccion:this.direccion,
      frances:this.frances==true?1:0,
      ingles:this.ingles==true?1:0,
      italiano:this.italiano==true?1:0,
      nombres:this.nombres,
      sexo:this.sexo,
      sueldo:this.sueldo,
    }
    //console.log(obj);
    
    this.http.post(this.baseUrl + 'api/Home/InsertFicha',obj,{headers:this.headers,responseType:'json'})
    .subscribe(res=>{
      if(res=='Saved'){
        Swal.fire('Exito','Guardado.','success');
        this.getFichas();
      }else if(res=="Didn't Save"){
        Swal.fire('Lo sentimos','Ha ocurrido un error vuelva a intentarlo','warning');
        console.warn('No insertó');
      }
    
    },error => {
      console.error(error);
      Swal.fire('Lo sentimos','Ha ocurrido un error vuelva a intentarlo','error');
    });
  }
  
}
