using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace MasterNet.Core.ApiProxyGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            System.Threading.Thread.Sleep(20000);

            string SolDir = args[0].Replace("\"", "");
            string DLLPath = SolDir + @"\Services\bin\";
            string DLL = "MasterNet.Core.Logic";
            Assembly principal = getPrincipal(SolDir, DLLPath, DLL);

            GenerarTS(args, principal, SolDir);
            GenerarMobileTS(args, principal, SolDir);
        }

        private static Assembly getPrincipal(string SolDir, string DLLPath, string DLL)
        {
            if (RuntimePolicyHelper.LegacyV2RuntimeEnabledSuccessfully == true)
            {
            }

            Assembly principal = null;

            // Cargo las referencias principales del framework
            foreach (string dll in Directory.GetFiles(SolDir + @"\ApiProxyGenerator\res\", "*.dll"))
            {
                System.Reflection.Assembly.ReflectionOnlyLoad(System.IO.File.ReadAllBytes(dll));
            }

            foreach (string dll in Directory.GetFiles(DLLPath, "*.dll", SearchOption.AllDirectories))
            {
                try
                {
                    Assembly assembly = System.Reflection.Assembly.ReflectionOnlyLoad(System.IO.File.ReadAllBytes(dll));

                    if (dll == DLLPath + DLL + ".dll")
                    {
                        principal = assembly;
                    }
                }
                catch (FileLoadException)
                {
                    //Console.Write(loadEx.Message);
                } // The Assembly has already been loaded.
                catch (BadImageFormatException)
                {
                    //Console.Write(imgEx.Message);
                } // If a BadImageFormatException exception is thrown, the file is not an assembly.
                catch (Exception ex)
                {
                    Console.Write(ex.Message);
                }
            }


            return principal;
        }

        public static void GenerarTS(string[] args, Assembly principal, string SolDir)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("class ApiRequest {"); sb.Append(Environment.NewLine);
            sb.Append("    Method: string;"); sb.Append(Environment.NewLine);
            sb.Append("    Parameters: Array<string>;"); sb.Append(Environment.NewLine);
            sb.Append("    SessionToken: string;"); sb.Append(Environment.NewLine);
            sb.Append("}"); sb.Append(Environment.NewLine);
            sb.Append("class ApiResponse {"); sb.Append(Environment.NewLine);
            sb.Append("    ErrorType: number;"); sb.Append(Environment.NewLine);
            sb.Append("    ErrorMessage: string;"); sb.Append(Environment.NewLine);
            sb.Append("    ErrorCode: string;"); sb.Append(Environment.NewLine);
            sb.Append("    Data: any;"); sb.Append(Environment.NewLine);
            sb.Append("}"); sb.Append(Environment.NewLine);
            sb.AppendLine();

            try
            {
                // if (principal == null) return "";
                Type t = principal.GetType("MasterNet.Core.Logic.Logic");

                if (t != null)
                {
                    // Sección Tipos
                    #region Generación de Tipos

                    List<Type> typesToRender = new List<Type>();
                    foreach (MethodInfo m in t.GetMethods().Where(m => m.DeclaringType == t && m.GetCustomAttributesData().Count() > 0))
                    {
                        if (m.ReturnType.IsGenericType || m.ReturnType.IsGenericParameter)
                        {
                            Type innerType = m.ReturnType.GetGenericArguments().First();
                            if (!innerType.IsValueType && typesToRender.Contains(innerType) == false && IsValueLikeClass(innerType) == false)
                            {
                                typesToRender.Add(innerType);
                                DiscoverInnerObjects(typesToRender);
                            }
                        }
                        else
                        {
                            if (!m.ReturnType.IsValueType && typesToRender.Contains(m.ReturnType) == false && IsValueLikeClass(m.ReturnType) == false)
                            {
                                typesToRender.Add(m.ReturnType);
                                DiscoverInnerObjects(typesToRender);
                            }
                        }

                        foreach (var p in m.GetParameters())
                        {
                            if (p.ParameterType.IsGenericType || p.ParameterType.IsGenericParameter)
                            {
                                Type innerType = p.ParameterType.GetGenericArguments().First();
                                if (!innerType.IsValueType && typesToRender.Contains(innerType) == false && IsValueLikeClass(innerType) == false)
                                {
                                    typesToRender.Add(innerType);
                                    DiscoverInnerObjects(typesToRender);
                                }
                            }
                            else
                            {
                                if (!p.ParameterType.IsValueType && typesToRender.Contains(p.ParameterType) == false && IsValueLikeClass(p.ParameterType) == false)
                                {
                                    typesToRender.Add(p.ParameterType);
                                    DiscoverInnerObjects(typesToRender);
                                }
                            }
                        }
                    }

                    // objetos dentro de otros objetos
                    DiscoverInnerObjects(typesToRender);

                    foreach (Type trender in typesToRender)
                    {
                        sb.AppendLine("class " + trender.Name + " {");

                        foreach (PropertyInfo prop in trender.GetProperties())
                        {
                            sb.AppendLine("     public " + prop.Name + " : " + RenderTSType(prop.PropertyType) + ";");
                        }

                        sb.AppendLine("}");
                    }
                    sb.AppendLine();

                    #endregion

                    #region Seccion Funciones

                    // Sección funciones
                    foreach (MethodInfo m in t.GetMethods().Where(m => m.DeclaringType == t && m.GetCustomAttributesData().Count() > 0))
                    {
                        if (m.GetCustomAttributesData().Count(a => a.Constructor.DeclaringType.FullName == "MasterNet.Core.Common.ApiMethodAttribute") == 0) continue;

                        string parameterArguments = "";

                        foreach (var p in m.GetParameters())
                        {
                            string TSType = RenderTSType(p.ParameterType);
                            if (!string.IsNullOrEmpty(TSType))
                            {
                                parameterArguments += p.Name + " : " + TSType + " ,";
                            }
                        }
                        //if (ParameterArguments.EndsWith(" ,"))
                        //    ParameterArguments = ParameterArguments.Substring(0, ParameterArguments.Length - " ,".Length);


                        sb.Append("function call_" + m.Name + "(" + parameterArguments + " callDone: (rq: ApiResponse) => void, callFail?: (rq: ApiResponse) => void, timeout?: number) {"); sb.Append(Environment.NewLine);
                        sb.Append("    var rq: ApiRequest = new ApiRequest();"); sb.Append(Environment.NewLine);
                        sb.Append("    var parameters: Array<string> = new Array<string>();"); sb.Append(Environment.NewLine);
                        //sb.Append("    rq.Method = arguments.callee.name.replace('call_',''); // mismo nombre del método en js, es el método en lógica"); sb.Append(Environment.NewLine);
                        sb.Append("    rq.Method = '" + m.Name + "'; // mismo nombre del método en js, es el método en lógica"); sb.Append(Environment.NewLine);
                        foreach (var p in m.GetParameters())
                        {
                            sb.Append("    parameters.push(JSON.stringify(" + p.Name + "));"); sb.Append(Environment.NewLine);
                        }

                        sb.Append("    rq.Parameters = parameters;"); sb.Append(Environment.NewLine);
                        if (m.Name == "Administrador_Login")
                        {
                            sb.Append("    rq.SessionToken = '';"); sb.Append(Environment.NewLine);
                        }
                        else
                        {
                            sb.Append("    rq.SessionToken = UsuarioSesion().ID + makeid();"); sb.Append(Environment.NewLine);
                        }

                        sb.Append("    Callback(JSON.stringify(rq), callDone, callFail, timeout);"); sb.Append(Environment.NewLine);
                        sb.Append("}"); sb.Append(Environment.NewLine);

                        sb.AppendLine();
                    }

                    #endregion

                    #region Sección Generación

                    foreach (Type trender in typesToRender)
                    {
                        sb.Append("/*"); sb.Append(Environment.NewLine);
                        sb.Append("        $('#grid_list').kendoGrid({"); sb.Append(Environment.NewLine);
                        sb.Append("            dataSource: {"); sb.Append(Environment.NewLine);
                        sb.Append("                data: lst,"); sb.Append(Environment.NewLine);
                        sb.Append("                schema: {"); sb.Append(Environment.NewLine);
                        sb.Append("                    model: {"); sb.Append(Environment.NewLine);
                        sb.Append("                        id: \"Id\","); sb.Append(Environment.NewLine);
                        sb.Append("                        fields: {"); sb.Append(Environment.NewLine);
                        foreach (PropertyInfo p in trender.GetProperties())
                        {
                            sb.Append("                            " + p.Name + ": { type: \"" + RenderTSType(p.PropertyType) + "\" },"); sb.Append(Environment.NewLine);
                        }
                        sb.Append("                        }"); sb.Append(Environment.NewLine);
                        sb.Append("                    }"); sb.Append(Environment.NewLine);
                        sb.Append("                },"); sb.Append(Environment.NewLine);
                        sb.Append("                pageSize: 10"); sb.Append(Environment.NewLine);
                        sb.Append("            },"); sb.Append(Environment.NewLine);
                        sb.Append("            height: 500,"); sb.Append(Environment.NewLine);
                        sb.Append("            scrollable: true,"); sb.Append(Environment.NewLine);
                        sb.Append("            sortable: true,"); sb.Append(Environment.NewLine);
                        sb.Append("            groupable: false,"); sb.Append(Environment.NewLine);
                        sb.Append("            persistSelection: true,"); sb.Append(Environment.NewLine);
                        sb.Append("            filterable: true,"); sb.Append(Environment.NewLine);
                        sb.Append("            pageable: true,"); sb.Append(Environment.NewLine);
                        sb.Append("            selectable: false,"); sb.Append(Environment.NewLine);
                        sb.Append("            columns: ["); sb.Append(Environment.NewLine);
                        foreach (PropertyInfo p in trender.GetProperties())
                        {
                            sb.Append("                { field: \"" + p.Name + "\", title: \"" + p.Name + "\", width: \"150px\", filterable: { multi: true, search: true } },"); sb.Append(Environment.NewLine);
                        }
                        sb.Append("                //{ command: { text: \"Editar\", click: EditarRegistro }, title: \"Editar\", width: \"100px\" },"); sb.Append(Environment.NewLine);
                        sb.Append("                //{ command: { text: \"Regenerar clave\", click: RegenerarClave }, title: \"Reseteo Clave\", width: \"150px\" }"); sb.Append(Environment.NewLine);
                        sb.Append("            ]"); sb.Append(Environment.NewLine);
                        sb.Append("        });"); sb.Append(Environment.NewLine);
                        sb.Append("        */"); sb.Append(Environment.NewLine);
                        sb.AppendLine();
                    }
                    #endregion
                }
            }

            catch (ReflectionTypeLoadException ex)
            {
                foreach (var item in ex.LoaderExceptions)
                {
                    Console.Write(item.Message);
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.ToString() + FlattenException(ex));
            }

            System.IO.File.WriteAllText(SolDir + @"\Web\lib\Proxy.ts", sb.ToString());
        }

        public static void GenerarMobileTS(string[] args, Assembly principal, string SolDir)
        {
            StringBuilder sb = new StringBuilder();

            if (RuntimePolicyHelper.LegacyV2RuntimeEnabledSuccessfully == true)
            {
            }

            try
            {
                // if (principal == null) return "";
                Type t = principal.GetType("MasterNet.Core.Logic.Logic");

                if (t != null)
                {
                    sb.Append("import { request, getFile, getImage, getJSON, getString, HttpResponseEncoding } from \"tns-core-modules/http\";"); sb.Append(Environment.NewLine);
                    sb.Append("import * as appSettings from \"tns-core-modules/application-settings\";"); sb.Append(Environment.NewLine);
                    sb.AppendLine();
                    sb.Append("export class ConfigParams {"); sb.Append(Environment.NewLine);
                    sb.Append("    constructor() { }"); sb.Append(Environment.NewLine);
                    sb.Append("    public ApiURL: string = \"http://XXX/Services/MobileApi.ashx\";"); sb.Append(Environment.NewLine);
                    sb.Append("    public RequestTimeout:number = 2000;"); sb.Append(Environment.NewLine);
                    sb.Append("    public Token:string = \"\";"); sb.Append(Environment.NewLine);
                    sb.Append("}"); sb.Append(Environment.NewLine);
                    sb.AppendLine();
                    sb.Append("export class Server {"); sb.Append(Environment.NewLine);

                    #region Seccion Funciones

                    // Sección funciones
                    foreach (MethodInfo m in t.GetMethods().Where(m => m.DeclaringType == t && m.GetCustomAttributesData().Count() > 0))
                    {
                        if (m.GetCustomAttributesData().Count(a => a.Constructor.DeclaringType.FullName == "MasterNet.Core.Common.ApiMethodAttribute") == 0) continue;

                        string parameterArguments = "";

                        foreach (var p in m.GetParameters())
                        {
                            string TSType = RenderTSType(p.ParameterType);
                            if (!string.IsNullOrEmpty(TSType))
                            {
                                parameterArguments += p.Name + " : " + TSType + " ,";
                            }
                        }
                        //if (ParameterArguments.EndsWith(" ,"))
                        //    ParameterArguments = ParameterArguments.Substring(0, ParameterArguments.Length - " ,".Length);


                        sb.Append("static call_" + m.Name + "(" + parameterArguments + " callDone: (rq: ApiResponse) => void, callFail?: (rq: ApiResponse) => void, timeout?: number) {"); sb.Append(Environment.NewLine);
                        sb.Append("    var rq: ApiRequest = new ApiRequest();"); sb.Append(Environment.NewLine);
                        sb.Append("    var parameters: Array<string> = new Array<string>();"); sb.Append(Environment.NewLine);
                        //sb.Append("    rq.Method = arguments.callee.name.replace('call_',''); // mismo nombre del método en js, es el método en lógica"); sb.Append(Environment.NewLine);
                        sb.Append("    rq.Method = '" + m.Name + "'; // mismo nombre del método en js, es el método en lógica"); sb.Append(Environment.NewLine);
                        foreach (var p in m.GetParameters())
                        {
                            sb.Append("    parameters.push(JSON.stringify(" + p.Name + "));"); sb.Append(Environment.NewLine);
                        }

                        sb.Append("    rq.Parameters = parameters;"); sb.Append(Environment.NewLine);
                        //if (m.Name == "Administrador_Login")
                        //{
                        //    sb.Append("    rq.SessionToken = '';"); sb.Append(Environment.NewLine);
                        //}
                        //else
                        //{

                        //}
                        sb.Append("    rq.SessionToken = appSettings.getString(\"ParticipanteID\", \"\");"); sb.Append(Environment.NewLine);

                        sb.Append("    this.Callback(JSON.stringify(rq), callDone, callFail, timeout);"); sb.Append(Environment.NewLine);
                        sb.Append("}"); sb.Append(Environment.NewLine);

                        sb.AppendLine();
                    }

                    #endregion

                    sb.Append("    static Callback(args: string, callDone: (rq: ApiResponse) => void, callFail: (e: any) => void, timeout?: number) {"); sb.Append(Environment.NewLine);
                    //sb.Append("     console.log(args);"); sb.Append(Environment.NewLine);
                    sb.Append("        var dateReviver = function (key, value) {"); sb.Append(Environment.NewLine);
                    sb.Append("            var a;"); sb.Append(Environment.NewLine);
                    sb.Append("            if (typeof value === 'string') {"); sb.Append(Environment.NewLine);
                    sb.Append("                if (value == '') return value;"); sb.Append(Environment.NewLine);
                    sb.Append(@"                a = /^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}(?:\.\d*)?)(Z|([+\-])(\d{2}):(\d{2}))$/.exec(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                if (a) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    return new Date(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                    //return new Date(Date.UTC(+a" + 1 + ", +a" + 2 + " - 1, +a" + 3 + ", +a" + 4 + ", +a" + 5 + ", +a" + 6 + "));"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append(@"                a = /^\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\d.\d\d\dZ$/.exec(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                if (a) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    return new Date(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append(@"                a = /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z$/.exec(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                if (a) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    return new Date(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append(@"                a = /(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2})/.exec(value)"); sb.Append(Environment.NewLine);
                    sb.Append("                if (a) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    return new Date(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append("                //a = Date.parse(value);"); sb.Append(Environment.NewLine);
                    sb.Append("                //if (a) {"); sb.Append(Environment.NewLine);
                    sb.Append("                //    return new Date(a);"); sb.Append(Environment.NewLine);
                    sb.Append("                //}"); sb.Append(Environment.NewLine);
                    sb.Append("            }"); sb.Append(Environment.NewLine);
                    sb.Append("            return value;"); sb.Append(Environment.NewLine);
                    sb.Append("        }"); sb.Append(Environment.NewLine);
                    sb.Append("        var config = new ConfigParams();"); sb.Append(Environment.NewLine);
                    sb.Append("        // hago la llamada al servicio y obtengo el encriptado de retorno"); sb.Append(Environment.NewLine);
                    sb.Append("        request({"); sb.Append(Environment.NewLine);
                    sb.Append("            url: config.ApiURL,"); sb.Append(Environment.NewLine);
                    sb.Append("            method: \"POST\","); sb.Append(Environment.NewLine);
                    sb.Append("            content: args,"); sb.Append(Environment.NewLine);
                    sb.Append("            timeout: config.RequestTimeout,"); sb.Append(Environment.NewLine);
                    sb.Append("            dontFollowRedirects: true"); sb.Append(Environment.NewLine);
                    sb.Append("        })"); sb.Append(Environment.NewLine);
                    sb.Append("            .then((response) => {"); sb.Append(Environment.NewLine);
                    sb.Append("                if (!response) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    throw ('No se ha recibido respuesta del servidor. Por favor verifique su conexión.');"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append("                if (!response.content || response.content.raw == \"\") {"); sb.Append(Environment.NewLine);
                    sb.Append("                    throw ('No se ha recibido respuesta del servidor. Por favor verifique su conexión.');"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append("                const result = <ApiResponse>JSON.parse(response.content.toString(HttpResponseEncoding.UTF8), dateReviver);"); sb.Append(Environment.NewLine);
                    sb.Append("                // Si hay un error en el servidor"); sb.Append(Environment.NewLine);
                    sb.Append("                if (result != null && result.ErrorType != 0) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    alert((result.ErrorCode != '' ? (result.ErrorCode + ' - ') : '') + result.ErrorMessage);"); sb.Append(Environment.NewLine);
                    sb.Append("                    if (typeof callFail === \"function\") {"); sb.Append(Environment.NewLine);
                    sb.Append("                        var ret = callFail(result);"); sb.Append(Environment.NewLine);
                    sb.Append("                    }"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append("                // devuelvo el objeto de respuesta"); sb.Append(Environment.NewLine);
                    sb.Append("                else if (typeof callDone === \"function\") {"); sb.Append(Environment.NewLine);
                    sb.Append("                    // if (res.Results.length == 1) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    //     callback(res.Results" + 0 + ".ReturnObject);"); sb.Append(Environment.NewLine);
                    sb.Append("                    // }"); sb.Append(Environment.NewLine);
                    sb.Append("                    var ret = callDone(result);"); sb.Append(Environment.NewLine);
                    sb.Append("                    //Loading_Hide();"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append("            }, (e) => {"); sb.Append(Environment.NewLine);
                    sb.Append("                if (typeof callFail === \"function\") {"); sb.Append(Environment.NewLine);
                    sb.Append("                    // if (res.Results.length == 1) {"); sb.Append(Environment.NewLine);
                    sb.Append("                    //     callback(res.Results" + 0 + ".ReturnObject);"); sb.Append(Environment.NewLine);
                    sb.Append("                    // }"); sb.Append(Environment.NewLine);
                    sb.Append("                    callFail(e);"); sb.Append(Environment.NewLine);
                    sb.Append("                }"); sb.Append(Environment.NewLine);
                    sb.Append("                alert(e);"); sb.Append(Environment.NewLine);
                    sb.Append("            });"); sb.Append(Environment.NewLine);
                    sb.Append("    }"); sb.Append(Environment.NewLine);
                    sb.Append("}"); sb.Append(Environment.NewLine);

                    sb.Append("export class ApiRequest {"); sb.Append(Environment.NewLine);
                    sb.Append("    Method: string;"); sb.Append(Environment.NewLine);
                    sb.Append("    Parameters: Array<string>;"); sb.Append(Environment.NewLine);
                    sb.Append("    SessionToken: string;"); sb.Append(Environment.NewLine);
                    sb.Append("}"); sb.Append(Environment.NewLine);
                    sb.Append("export class ApiResponse {"); sb.Append(Environment.NewLine);
                    sb.Append("    ErrorType: number;"); sb.Append(Environment.NewLine);
                    sb.Append("    ErrorMessage: string;"); sb.Append(Environment.NewLine);
                    sb.Append("    ErrorCode: string;"); sb.Append(Environment.NewLine);
                    sb.Append("    Data: any;"); sb.Append(Environment.NewLine);
                    sb.Append("}"); sb.Append(Environment.NewLine);
                    sb.AppendLine();

                    // Sección Tipos
                    #region Generación de Tipos

                    List<Type> typesToRender = new List<Type>();
                    foreach (MethodInfo m in t.GetMethods().Where(m => m.DeclaringType == t && m.GetCustomAttributesData().Count() > 0))
                    {
                        if (m.ReturnType.IsGenericType || m.ReturnType.IsGenericParameter)
                        {
                            Type innerType = m.ReturnType.GetGenericArguments().First();
                            if (!innerType.IsValueType && typesToRender.Contains(innerType) == false && IsValueLikeClass(innerType) == false)
                            {
                                typesToRender.Add(innerType);
                                DiscoverInnerObjects(typesToRender);
                            }
                        }
                        else
                        {
                            if (!m.ReturnType.IsValueType && typesToRender.Contains(m.ReturnType) == false && IsValueLikeClass(m.ReturnType) == false)
                            {
                                typesToRender.Add(m.ReturnType);
                                DiscoverInnerObjects(typesToRender);
                            }
                        }

                        foreach (var p in m.GetParameters())
                        {
                            if (p.ParameterType.IsGenericType || p.ParameterType.IsGenericParameter)
                            {
                                Type innerType = p.ParameterType.GetGenericArguments().First();
                                if (!innerType.IsValueType && typesToRender.Contains(innerType) == false && IsValueLikeClass(innerType) == false)
                                {
                                    typesToRender.Add(innerType);
                                    DiscoverInnerObjects(typesToRender);
                                }
                            }
                            else
                            {
                                if (!p.ParameterType.IsValueType && typesToRender.Contains(p.ParameterType) == false && IsValueLikeClass(p.ParameterType) == false)
                                {
                                    typesToRender.Add(p.ParameterType);
                                    DiscoverInnerObjects(typesToRender);
                                }
                            }
                        }
                    }

                    // objetos dentro de otros objetos
                    DiscoverInnerObjects(typesToRender);

                    foreach (Type trender in typesToRender)
                    {
                        sb.AppendLine("export class " + trender.Name + " {");

                        foreach (PropertyInfo prop in trender.GetProperties())
                        {
                            sb.AppendLine("     public " + prop.Name + " : " + RenderTSType(prop.PropertyType) + ";");
                        }

                        sb.AppendLine("}");
                    }
                    sb.AppendLine();

                    #endregion
                }
            }

            catch (ReflectionTypeLoadException ex)
            {
                foreach (var item in ex.LoaderExceptions)
                {
                    Console.Write(item.Message);
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.ToString() + FlattenException(ex));
            }



            //System.IO.File.WriteAllText(SolDir + @"\Web\lib\Mobile.ts", sb.ToString());
        }

        private static void DiscoverInnerObjects(List<Type> typesToRender)
        {
            List<Type> ExtraDiscovered = new List<Type>();

            foreach (Type trender in typesToRender)
            {
                foreach (PropertyInfo p in trender.GetProperties())
                {
                    if (p.PropertyType.IsGenericType || p.PropertyType.IsGenericParameter)
                    {
                        Type innerType = p.PropertyType.GetGenericArguments().First();
                        if (!innerType.IsValueType &&
                            typesToRender.Contains(innerType) == false &&
                            ExtraDiscovered.Contains(innerType) == false &&
                            IsValueLikeClass(innerType) == false)
                        {
                            ExtraDiscovered.Add(innerType);
                        }
                    }
                    else
                    {
                        if (!p.PropertyType.IsValueType &&
                            typesToRender.Contains(p.PropertyType) == false &&
                            ExtraDiscovered.Contains(p.PropertyType) == false &&
                            IsValueLikeClass(p.PropertyType) == false)
                        {
                            ExtraDiscovered.Add(p.PropertyType);
                        }
                    }
                }
            }
            if (ExtraDiscovered.Count == 0) return;
            typesToRender.AddRange(ExtraDiscovered);
            DiscoverInnerObjects(typesToRender);
        }

        private static bool IsValueLikeClass(Type type)
        {
            if (type == typeof(string)) return true;
            if (type == typeof(object)) return true;
            if (type == typeof(Type)) return true;
            if (type == typeof(byte[])) return true;
            return false;
        }

        private static string RenderTSType(Type type)
        {
            if (type.IsGenericType || type.IsGenericParameter)
            {
                if (Nullable.GetUnderlyingType(type) != null)
                {
                    return RenderTSType(type.GetGenericArguments().First());
                }
                else if (
                    type is IEnumerable ||
                    type is IList ||
                    type.FullName.Contains("ICollection`1") ||
                    type.FullName.Contains("List`1"))
                    return "Array<" + RenderTSType(type.GetGenericArguments().First()) + ">";
                else
                    return RenderTSType(type.GetGenericArguments().First());
            }
            else
            {
                if (type == typeof(Int16) || type == typeof(int) || type == typeof(float) || type == typeof(decimal) || type == typeof(double) || type == typeof(long) || type == typeof(byte))
                    return "number";
                else if (type == typeof(bool))
                    return "boolean";
                else if (type == typeof(string) || type == typeof(Guid))
                    return "string";
                else if (type == typeof(DateTime))
                    return "Date";
                else if (type == typeof(byte[]))
                    return "string"; // se supone que descargaría como base64
                else
                    return type.Name;

            }
        }

        public static string FlattenException(Exception exception)
        {
            var stringBuilder = new StringBuilder();

            while (exception != null)
            {
                stringBuilder.AppendLine(exception.Message);
                stringBuilder.AppendLine(exception.StackTrace);

                exception = exception.InnerException;
            }

            return stringBuilder.ToString();
        }

        public static String GetActualTypeName(Type type, bool bAlias = true, bool bFullQualified = false)
        {
            Type nullable = Nullable.GetUnderlyingType(type);
            String name = null;

            if (nullable != null) // handles Nullable types
            {
                name = (bAlias) ? GetAliasName(nullable, bFullQualified)
                    : (bFullQualified) ? nullable.FullName : nullable.Name;

                return String.Format("{0}?", name);
            }

            if (!type.GetGenericArguments().Any()) // handles non generic types
            {
                name = (bAlias) ? GetAliasName(type, bFullQualified)
                    : (bFullQualified) ? type.FullName : type.Name;

                return name;
            }

            name = (bFullQualified) ? type.FullName : type.Name;

            // recrusive looping into generic type tree for the required type names 
            String[] names = type.GetGenericArguments()
                .Select(t => GetActualTypeName(t, bAlias, bFullQualified))
                .ToArray();

            return String.Format("{0}<{1}>", name.Substring(0, name.IndexOf('`')), String.Join(",", names));
        }

        public static String GetAliasName(Type type, bool bFullQualified = false)
        {
            String alias = null;

            using (var provider = new Microsoft.CSharp.CSharpCodeProvider())
            {
                var typeRef = new System.CodeDom.CodeTypeReference(type);

                alias = provider.GetTypeOutput(typeRef);
            }

            int index = alias.LastIndexOf(".");

            if (bFullQualified || index == -1)
                return alias;

            return alias.Substring(index + 1);
        }


    }

    public static class RuntimePolicyHelper
    {
        public static bool LegacyV2RuntimeEnabledSuccessfully { get; private set; }

        static RuntimePolicyHelper()
        {
            ICLRRuntimeInfo clrRuntimeInfo =
                (ICLRRuntimeInfo)RuntimeEnvironment.GetRuntimeInterfaceAsObject(
                    Guid.Empty,
                    typeof(ICLRRuntimeInfo).GUID);
            try
            {
                clrRuntimeInfo.BindAsLegacyV2Runtime();
                LegacyV2RuntimeEnabledSuccessfully = true;
            }
            catch (COMException)
            {
                // This occurs with an HRESULT meaning 
                // "A different runtime was already bound to the legacy CLR version 2 activation policy."
                LegacyV2RuntimeEnabledSuccessfully = false;
            }
        }

        [ComImport]
        [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
        [Guid("BD39D1D2-BA2F-486A-89B0-B4B0CB466891")]
        private interface ICLRRuntimeInfo
        {
            void xGetVersionString();
            void xGetRuntimeDirectory();
            void xIsLoaded();
            void xIsLoadable();
            void xLoadErrorString();
            void xLoadLibrary();
            void xGetProcAddress();
            void xGetInterface();
            void xSetDefaultStartupFlags();
            void xGetDefaultStartupFlags();

            [MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
            void BindAsLegacyV2Runtime();
        }
    }

}
