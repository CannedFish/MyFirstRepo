#include <stdio.h> 
#include "curl/curl.h"

bool getUrl(const char *filename) {
		CURL *curl;
		CURLcode res;
		FILE *fp;

		if((fp = fopen(filename, "w")) == NULL) {
				return false;
		}
		struct curl_slist *headers = NULL;
		headers = curl_slist_append(headers, "Accept: Agent-007");
		curl = curl_easy_init();
		if(curl) {
				//curl_easy_setopt(curl, CURLOPT_PROXY, "10.99.60.201:8080");
				curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
				curl_easy_setopt(curl, CURLOPT_URL, "http://www.baidu.com");
				curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
				res = curl_easy_perform(curl);
				curl_slist_free_all(headers);
				curl_easy_cleanup(curl);
		}
		fclose(fp);
		return true;
}

bool postUrl(const char *filename) {
		CURL *curl;
		CURLcode res;
		FILE *fp;
		if((fp = fopen(filename, "w")) == NULL) return false;

		curl = curl_easy_init();
		if(curl) {
				curl_easy_setopt(curl, CURLOPT_COOKIEFILE, "/tmp/cookie.txt");
				//curl_easy_setopt(curl, CURLOPT_POSTFIELDS, "");
				//curl_easy_setopt(curl, CURLOPT_URL, "");
				//curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
				//res = curl_easy_perform(curl);
				//curl_easy_cleanup(curl);
		}
		fclose(fp);
		return true;
}

int main() {
		getUrl("/tmp/get.html");
		//postUrl("/tmp/post.html");
		return 0;
}
