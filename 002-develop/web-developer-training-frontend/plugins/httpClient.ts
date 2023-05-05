import HttpClient from "@/infrastructure/client/HttpClient";

export default defineNuxtPlugin(() => {
  const httpClient = new HttpClient();
  return {
    provide: {
      httpClient: httpClient,
    },
  };
});
