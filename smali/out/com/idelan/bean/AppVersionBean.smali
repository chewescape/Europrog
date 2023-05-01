.class public Lcom/idelan/bean/AppVersionBean;
.super Ljava/lang/Object;
.source "AppVersionBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private curVer:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private downUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private publishDate:Ljava/lang/String;

.field private updateFlag:I

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurVer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/idelan/bean/AppVersionBean;->curVer:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/idelan/bean/AppVersionBean;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getDownUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/idelan/bean/AppVersionBean;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/idelan/bean/AppVersionBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/idelan/bean/AppVersionBean;->publishDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFlag()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/idelan/bean/AppVersionBean;->updateFlag:I

    return v0
.end method

.method public getVerCode()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/idelan/bean/AppVersionBean;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/idelan/bean/AppVersionBean;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurVer(Ljava/lang/String;)V
    .registers 2
    .param p1, "curVer"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/idelan/bean/AppVersionBean;->curVer:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .registers 2
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/idelan/bean/AppVersionBean;->des:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/idelan/bean/AppVersionBean;->downUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/idelan/bean/AppVersionBean;->packageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPublishDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "publishDate"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/idelan/bean/AppVersionBean;->publishDate:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUpdateFlag(I)V
    .registers 2
    .param p1, "updateFlag"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/idelan/bean/AppVersionBean;->updateFlag:I

    .line 76
    return-void
.end method

.method public setVerCode(I)V
    .registers 2
    .param p1, "verCode"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/idelan/bean/AppVersionBean;->verCode:I

    .line 28
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "verName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/idelan/bean/AppVersionBean;->verName:Ljava/lang/String;

    .line 60
    return-void
.end method
