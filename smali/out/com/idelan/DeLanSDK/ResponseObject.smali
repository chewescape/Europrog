.class public Lcom/idelan/DeLanSDK/ResponseObject;
.super Ljava/lang/Object;
.source "ResponseObject.java"


# instance fields
.field public retCmd:I

.field public retCode:I

.field public retData:[B


# direct methods
.method public constructor <init>(II[B)V
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "code"    # I
    .param p3, "data"    # [B

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 11
    iput p2, p0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 12
    iput-object p3, p0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 13
    return-void
.end method
