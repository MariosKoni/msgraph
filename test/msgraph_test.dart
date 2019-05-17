import 'package:flutter_test/flutter_test.dart';

import 'package:msgraph/msgraph.dart';

void main() {
  test('Msgrah', () async {
    final token="eyJ0eXAiOiJKV1QiLCJub25jZSI6IkFRQUJBQUFBQUFEQ29NcGpKWHJ4VHE5Vkc5dGUtN0ZYTFlPRm9EZ3FLSmIzZkgzUjFxWUUzVzBiWlZIbmJLOExvZG1DeHJVOTZteUstaUt1STljTjByd09YU3RNNGg1bmhQZUdHWmpiMkVjWTJxWU5SWXN5TmlBQSIsImFsZyI6IlJTMjU2IiwieDV0IjoiSEJ4bDltQWU2Z3hhdkNrY29PVTJUSHNETmEwIiwia2lkIjoiSEJ4bDltQWU2Z3hhdkNrY29PVTJUSHNETmEwIn0.eyJhdWQiOiJodHRwczovL2dyYXBoLm1pY3Jvc29mdC5jb20iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC9hZWNmNDcyNy1lOTc3LTRkMjYtYTBkZS04Njc5MjViOWU2NjYvIiwiaWF0IjoxNTU4MTE2Mzg4LCJuYmYiOjE1NTgxMTYzODgsImV4cCI6MTU1ODEyMDI4OCwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IkFWUUFxLzhMQUFBQXFNSHl2MGM3Q0pFelBEOXZJdElVdVIxaEtZcnZteU5zcG1GdWdmN3JvZ25hV01FZzBERzRISFhaeUtyMmFFWENrRGJmQXVlbHd2RUsxVEM4dUpwZnZ5RFg1QlJHTzhOV0duTCtubmt4ajFnPSIsImFtciI6WyJwd2QiLCJtZmEiXSwiYXBwX2Rpc3BsYXluYW1lIjoiZmx1dHRlcmdvIiwiYXBwaWQiOiJiOWU1MjMyNy0zOWI2LTQwOGYtYjdlZS00NzlmY2Y2NmRkNWQiLCJhcHBpZGFjciI6IjAiLCJmYW1pbHlfbmFtZSI6IldlaSIsImdpdmVuX25hbWUiOiJBbGxhbiIsImlwYWRkciI6IjEwNC4yNTEuOTguMTMwIiwibmFtZSI6IkFsbGFuIFdlaSIsIm9pZCI6IjczNDcxYzQzLWUxNmQtNDUxYy1hMzZkLWVjMmQ3OWU0M2Y1YyIsIm9ucHJlbV9zaWQiOiJTLTEtNS0yMS0yMjQ5OTE1MjU0LTM3NzIyODE2OTQtNDA3NTA5MzIwNS0xNTIxMSIsInBsYXRmIjoiMSIsInB1aWQiOiIxMDAzM0ZGRjlCRjQwNjE1Iiwic2NwIjoiQWNjZXNzUmV2aWV3LlJlYWQuQWxsIEFjY2Vzc1Jldmlldy5SZWFkV3JpdGUuQWxsIEFncmVlbWVudC5SZWFkLkFsbCBBZ3JlZW1lbnQuUmVhZFdyaXRlLkFsbCBBZ3JlZW1lbnRBY2NlcHRhbmNlLlJlYWQgQWdyZWVtZW50QWNjZXB0YW5jZS5SZWFkLkFsbCBBbmFseXRpY3MuUmVhZCBBcHBDYXRhbG9nLlJlYWRXcml0ZS5BbGwgQXVkaXRMb2cuUmVhZC5BbGwgQm9va2luZ3NBcHBvaW50bWVudC5SZWFkV3JpdGUuQWxsIGVtYWlsIG9wZW5pZCBQb2xpY3kuUmVhZC5BbGwgUG9saWN5LlJlYWRXcml0ZS5Db25kaXRpb25hbEFjY2VzcyBQb2xpY3kuUmVhZFdyaXRlLlRydXN0RnJhbWV3b3JrIFByaXZpbGVnZWRBY2Nlc3MuUmVhZFdyaXRlLkF6dXJlQUQgUHJpdmlsZWdlZEFjY2Vzcy5SZWFkV3JpdGUuQXp1cmVSZXNvdXJjZXMgcHJvZmlsZSBQcm9ncmFtQ29udHJvbC5SZWFkLkFsbCBQcm9ncmFtQ29udHJvbC5SZWFkV3JpdGUuQWxsIFJlcG9ydHMuUmVhZC5BbGwgU2VjdXJpdHlBY3Rpb25zLlJlYWQuQWxsIFNlY3VyaXR5QWN0aW9ucy5SZWFkV3JpdGUuQWxsIFNlY3VyaXR5RXZlbnRzLlJlYWQuQWxsIFNlY3VyaXR5RXZlbnRzLlJlYWRXcml0ZS5BbGwgU2l0ZXMuRnVsbENvbnRyb2wuQWxsIFNpdGVzLk1hbmFnZS5BbGwgU2l0ZXMuUmVhZC5BbGwgU2l0ZXMuUmVhZFdyaXRlLkFsbCBTdWJzY3JpcHRpb24uUmVhZC5BbGwgVGFza3MuUmVhZCBUYXNrcy5SZWFkLlNoYXJlZCBUYXNrcy5SZWFkV3JpdGUgVGFza3MuUmVhZFdyaXRlLlNoYXJlZCBUaHJlYXRJbmRpY2F0b3JzLlJlYWRXcml0ZS5Pd25lZEJ5IFRydXN0RnJhbWV3b3JrS2V5U2V0LlJlYWQuQWxsIFRydXN0RnJhbWV3b3JrS2V5U2V0LlJlYWRXcml0ZS5BbGwgVXNlci5FeHBvcnQuQWxsIFVzZXIuSW52aXRlLkFsbCBVc2VyLlJlYWQgVXNlci5SZWFkLkFsbCBVc2VyLlJlYWRCYXNpYy5BbGwgVXNlci5SZWFkV3JpdGUgVXNlci5SZWFkV3JpdGUuQWxsIFVzZXJBY3Rpdml0eS5SZWFkV3JpdGUuQ3JlYXRlZEJ5QXBwIFVzZXJUaW1lbGluZUFjdGl2aXR5LldyaXRlLkNyZWF0ZWRCeUFwcCIsInN1YiI6IlVLMmYtZXZVckVHbjdkSTJTREQ3VHJzdnF3aDZRSnRad2lwUWpucDI0dUkiLCJ0aWQiOiJhZWNmNDcyNy1lOTc3LTRkMjYtYTBkZS04Njc5MjViOWU2NjYiLCJ1bmlxdWVfbmFtZSI6IkFXZWlAc21pdGhhbmRsb25nLmNvbSIsInVwbiI6IkFXZWlAc21pdGhhbmRsb25nLmNvbSIsInV0aSI6Ik5wdk1rd2FpMTBtX3N3MDI5VFFsQUEiLCJ2ZXIiOiIxLjAiLCJ4bXNfc3QiOnsic3ViIjoiWlBhcWFkb3hxYTZkOVNIQ1FIRk1WY29ZSDlEeFFybzVfV2NXR1R3UzZ2ZyJ9LCJ4bXNfdGNkdCI6MTQxNDUzMzkxMX0.X3LmzTE3rxS6-08u_mSYCk0NSmEifUuCFGePP3vI6MoJtYRS82ja5kfojFRaDknroG2GDPn8h_479tKXwJ3ISXCFE72Du97SKd7I-JZblh7fjqFCy1rYThIZUPm2Prp5wF9db0XiotAf7KOzhRX8sobbTrQMH7lmWkwW5pMlGKeTtJG7N7kDvkl4OZ22E--sdz6BUnWYKvNXukMiwxW-XfK5BZxMogBwtQXVgHEIe3enYB3ckX-9Bv8Jg2yYEEa_wNiiiq1tlOtZp1Ua0rCl2jekbdMd5_js1m1VqgGPC4cfiLIddghKW2abHqi4I3U_Tu007FaeRC_jqxdiT41cZw";
    final msGraph = MsGraph(token);
    //Map<String,String> header={'responseType':'application/json'};
   
    //expect(await msGraph.me.getMessages(),1);
    //expect(await msGraph.me.photo(),1);
    expect(await msGraph.me.get(),1);
    
  });
}
