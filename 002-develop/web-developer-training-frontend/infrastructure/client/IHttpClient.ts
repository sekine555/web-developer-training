export type ResponseType = "json" | "text";

export default interface IHttpClient {
  get<T>(
    path: string,
    options?: RequestInit,
    responseType?: ResponseType
  ): Promise<{ data: T; statusCode: number }>;

  post<T>(
    path: string,
    body: object | string,
    options?: RequestInit,
    responseType?: ResponseType
  ): Promise<{ data: T; statusCode: number }>;

  put<T>(
    path: string,
    body: object,
    options?: RequestInit,
    responseType?: ResponseType
  ): Promise<{ data: T; statusCode: number }>;

  patch<T>(
    path: string,
    body: object,
    options?: RequestInit,
    responseType?: ResponseType
  ): Promise<{ data: T; statusCode: number }>;

  delete<T>(
    path: string,
    options?: RequestInit,
    responseType?: ResponseType
  ): Promise<{ data: T; statusCode: number }>;
}
