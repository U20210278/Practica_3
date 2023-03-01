<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="CapaPresentacion.Categoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-12 m-auto">
                    <!-- Card Categoria-->
                <div class="card mt-4">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-8">
                                <h5>Listado categoria</h5>
                                
                            </div>
                            <div class="col-4">
                                    <button class="btn btn-secondary float-end" type="button" data-bs-toggle="modal"
                                        data-bs-target ="#modal-insert-categoria"> 
                                        Registrar
                                    </button>
                                </div>
                        </div>
                    </div>

                </div>
                     <!--Fin Card Categoria-->
                    <!--INICIO gridvi-->

                    
            <div class="row justify-content-center  pt-5">
              
                <asp:GridView ID="GridView1" CssClass="table table-striped table-hover " runat="server"></asp:GridView>

            </div>
                </div>

            </div>

            <div class="modal fade" id="modal-insert-categoria" tabindex="-1" aria-labelledby="modal-insertar" aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">
                                Registro de categorias
                            </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <h6>Formulario de registro</h6>
                            <div class="row">
                               <div class="col-lg-6 col-md-8 col-sm-12">
                                   <div class="mb-3">
                                       <label class="form-label">Nombre</label>
                                       <asp:TextBox ID="TextBoxNombreCategoria" CssClass="form-control" placeholde="Ingresa el nombre de la categoria" runat="server"></asp:TextBox>
                                   </div>
                                       <div class="mb-3">
                                       <label class="form-label">Descripcion</label>
                                       <asp:TextBox ID="Descripcion" CssClass="form-control" placeholde="Ingresa el nombre de la categoria" runat="server"></asp:TextBox>
                                   </div>
                               </div>
                            </div>
                            
                        </div>
                        <div class="modal--footer">
                            <button class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>

                            <asp:Button ID="ButtonGuardarCategoria" text="Guardar" CssClass="btn btn-primary" runat="server" OnClick="GuardarCat_Click" />
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>
