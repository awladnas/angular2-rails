import {Component, OnInit} from 'angular2/core'
import {RouteParams} from 'angular2/router'
import {Http, HTTP_PROVIDERS} from 'angular2/http';

@Component({
    selector: 'about',
    templateUrl: '/app/about.component.html'
})

export class AboutComponent {
    message: string;

    constructor(public http: Http) {
        this.http.get('http://localhost:3000/api/about')
            .subscribe(
                data => this.message = data.json().some,
                err => console.log(err)
            );
    }
}
