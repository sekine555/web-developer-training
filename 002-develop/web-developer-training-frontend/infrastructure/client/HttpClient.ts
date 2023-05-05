import IHttpClient, { ResponseType } from "./IHttpClient";

class HttpClient implements IHttpClient {
  private async formatResponse<T>(
    response: Response,
    responseType: ResponseType
  ): Promise<{ data: T; statusCode: number }> {
    switch (responseType) {
      case "json":
        return { data: await response.json(), statusCode: response.status };
      case "text":
        return {
          data: (await response.text()) as unknown as T,
          statusCode: response.status,
        };
    }
  }

  private getRequestInit(options?: RequestInit): RequestInit {
    const defaultRequestInit = {
      headers: {
        "Content-Type": "application/json",
      },
    };
    // ヘッダーが渡された場合にはマージする
    return options?.headers
      ? {
          ...options,
          headers: {
            ...defaultRequestInit.headers,
            ...options.headers,
          },
        }
      : {
          ...defaultRequestInit,
          ...options,
        };
  }

  async get<T>(
    path: string,
    options?: RequestInit | undefined,
    responseType: ResponseType = "json"
  ): Promise<{ data: T; statusCode: number }> {
    try {
      const response = await fetch(path, {
        ...this.getRequestInit(options),
      });
      return await this.formatResponse<T>(response, responseType);
    } catch (error) {
      console.log(`@HttpClient >>> get: ${error}`);
      throw new Error();
    }
  }

  async post<T>(
    path: string,
    body: string | object,
    options?: RequestInit | undefined,
    responseType: ResponseType = "json"
  ): Promise<{ data: T; statusCode: number }> {
    const requestBody = body instanceof Object ? JSON.stringify(body) : body;
    try {
      const response = await fetch(path, {
        method: "POST",
        body: requestBody,
        ...this.getRequestInit(options),
      });
      return await this.formatResponse<T>(response, responseType);
    } catch (error) {
      console.log(`@HttpClient >>> post: ${error}`);
      throw new Error();
    }
  }

  async put<T>(
    path: string,
    body: object,
    options?: RequestInit | undefined,
    responseType: ResponseType = "json"
  ): Promise<{ data: T; statusCode: number }> {
    try {
      const response = await fetch(path, {
        method: "PUT",
        body: JSON.stringify(body),
        ...this.getRequestInit(options),
      });
      return await this.formatResponse<T>(response, responseType);
    } catch (error) {
      console.log(`@HttpClient >>> put: ${error}`);
      throw new Error();
    }
  }

  async patch<T>(
    path: string,
    body: object,
    options?: RequestInit | undefined,
    responseType: ResponseType = "json"
  ): Promise<{ data: T; statusCode: number }> {
    try {
      const response = await fetch(path, {
        method: "PATCH",
        body: JSON.stringify(body),
        ...this.getRequestInit(options),
      });
      return await this.formatResponse<T>(response, responseType);
    } catch (error) {
      console.log(`@HttpClient >>> patch: ${error}`);
      throw new Error();
    }
  }

  async delete<T>(
    path: string,
    options?: RequestInit | undefined,
    responseType: ResponseType = "json"
  ): Promise<{ data: T; statusCode: number }> {
    try {
      const response = await fetch(path, {
        method: "DELETE",
        ...this.getRequestInit(options),
      });
      return await this.formatResponse<T>(response, responseType);
    } catch (error) {
      console.log(`@HttpClient >>> delete: ${error}`);
      throw new Error();
    }
  }
}

export default HttpClient;
