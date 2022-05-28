<%@ Page Title="" Language="C#" MasterPageFile="~/tweda1.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="img-fluid position-absolute w-100 h-100" src="img/about1.jpg" alt="" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <h6 class="section-title bg-white text-start text-primary pe-3">Welcome To:</h6>
                    <h1 class="mb-4">歡迎來到 西方文化酒店</h1>
                    <p class="mb-4">台北西方文化酒店是一間五星級豪華酒店,擁有美景及包羅萬象的設施配套。</p>
                    <p class="mb-4">酒店經過精細設計，非常注重空間感，為您提供賓至如歸的豪華住宿體驗。</p>
                      <p class="mb-4">以下是我們提供的服務: </p>
                    <div class="row gy-2 gx-4 mb-4">
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>健身中心</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>豪華SPA </p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>商務會議</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>芳療體驗與乾式桑拿</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>餐飲服務</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>婚宴與活動</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>外燴服務</p>
                        </div>
                    </div>
                    <a class="btn btn-primary py-3 px-5 mt-2" href="discount.aspx">了解優惠方案</a>
                </div>
            <%--</div>--%>
        </div>
    </div>
    <!-- About End -->
</asp:Content>

