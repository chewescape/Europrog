.class public Lcom/idelan/bean/ShareUserBean;
.super Ljava/lang/Object;
.source "ShareUserBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private destUser:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private sId:Ljava/lang/String;

.field private shareType:I

.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/idelan/bean/ShareUserBean;->destUser:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/idelan/bean/ShareUserBean;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/idelan/bean/ShareUserBean;->shareType:I

    return v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/idelan/bean/ShareUserBean;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/idelan/bean/ShareUserBean;->sId:Ljava/lang/String;

    return-object v0
.end method

.method public setDestUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "destUser"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/idelan/bean/ShareUserBean;->destUser:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "endDate"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/idelan/bean/ShareUserBean;->endDate:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setShareType(I)V
    .registers 2
    .param p1, "shareType"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/idelan/bean/ShareUserBean;->shareType:I

    .line 41
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/idelan/bean/ShareUserBean;->startDate:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setsId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sId"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/idelan/bean/ShareUserBean;->sId:Ljava/lang/String;

    .line 25
    return-void
.end method
