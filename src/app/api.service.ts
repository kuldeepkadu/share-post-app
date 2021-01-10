import { Injectable, Output, EventEmitter } from '@angular/core';
import { map } from 'rxjs/operators';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Users } from './users';
import { Posts } from './posts';

@Injectable({
    providedIn: 'root'
})

export class ApiService {
    redirectUrl: string;
    baseUrl: string = "http://localhost/share-post-app/php";
    @Output() getLoggedInName: EventEmitter<any> = new EventEmitter();
    constructor(private httpClient: HttpClient) { }

    readPosts(): Observable<Posts[]>{
		return this.httpClient.get<Posts[]>(`${this.baseUrl}/showposts.php`);
	}

    public userlogin(username, password) {
        alert("Login Successfull : " + username)
        return this.httpClient.post<any>(this.baseUrl + '/login.php', { username, password })
            .pipe(map(Users => {
                this.setToken(Users[0].name);
                this.getLoggedInName.emit(true);
                return Users;
            }));
    }

    public userregistration(name, email, pwd) {
        return this.httpClient.post<any>(this.baseUrl + '/register.php', { name, email, pwd })
            .pipe(map(Users => {
                return Users;
            }));
    }

    public sharethepost(title, description) {
        return this.httpClient.post<any>(this.baseUrl + '/sharepost.php', { title, description })
            .pipe(map(Posts => {
                return Posts;
            }));
    }

    //token
    setToken(token: string) {
        localStorage.setItem('token', token);
    }
    getToken() {
        return localStorage.getItem('token');
    }
    deleteToken() {
        localStorage.removeItem('token');
    }
    isLoggedIn() {
        const usertoken = this.getToken();
        if (usertoken != null) {
            return true
        }
        return false;
    }
}