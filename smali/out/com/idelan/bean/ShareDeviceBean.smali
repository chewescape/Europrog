.class public Lcom/idelan/bean/ShareDeviceBean;
.super Ljava/lang/Object;
.source "ShareDeviceBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private acpType:Ljava/lang/String;

.field private acpVer:Ljava/lang/String;

.field private adminUser:Ljava/lang/String;

.field private apcName:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private devName:Ljava/lang/String;

.field private devSN:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private function:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private proVer:Ljava/lang/String;

.field private sId:Ljava/lang/String;

.field private shareType:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private subSN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcpType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->acpType:Ljava/lang/String;

    return-object v0
.end method

.method public getAcpVer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->acpVer:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->adminUser:Ljava/lang/String;

    return-object v0
.end method

.method public getApcName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->apcName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getDevName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->devName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevSN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->devSN:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProVer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->proVer:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->shareType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->subSN:Ljava/lang/String;

    return-object v0
.end method

.method public getsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/idelan/bean/ShareDeviceBean;->sId:Ljava/lang/String;

    return-object v0
.end method

.method public setAcpType(Ljava/lang/String;)V
    .registers 2
    .param p1, "acpType"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->acpType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setAcpVer(Ljava/lang/String;)V
    .registers 2
    .param p1, "acpVer"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->acpVer:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setAdminUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "adminUser"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->adminUser:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setApcName(Ljava/lang/String;)V
    .registers 2
    .param p1, "apcName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->apcName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .registers 2
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->brand:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDevName(Ljava/lang/String;)V
    .registers 2
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->devName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setDevSN(Ljava/lang/String;)V
    .registers 2
    .param p1, "devSN"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->devSN:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "endDate"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->endDate:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .registers 2
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->function:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->model:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setProVer(Ljava/lang/String;)V
    .registers 2
    .param p1, "proVer"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->proVer:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setShareType(Ljava/lang/String;)V
    .registers 2
    .param p1, "shareType"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->shareType:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->startDate:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSubSN(Ljava/lang/String;)V
    .registers 2
    .param p1, "subSN"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->subSN:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setsId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/idelan/bean/ShareDeviceBean;->sId:Ljava/lang/String;

    .line 37
    return-void
.end method
