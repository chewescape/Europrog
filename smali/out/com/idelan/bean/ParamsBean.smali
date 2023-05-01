.class public Lcom/idelan/bean/ParamsBean;
.super Ljava/lang/Object;
.source "ParamsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private datas:[B

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatas()[B
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/idelan/bean/ParamsBean;->datas:[B

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/idelan/bean/ParamsBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDatas([B)V
    .registers 2
    .param p1, "datas"    # [B

    .prologue
    .line 21
    iput-object p1, p0, Lcom/idelan/bean/ParamsBean;->datas:[B

    .line 22
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/idelan/bean/ParamsBean;->url:Ljava/lang/String;

    .line 16
    return-void
.end method
