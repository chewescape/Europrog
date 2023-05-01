.class public Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bean/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorInfo"
.end annotation


# instance fields
.field private cause:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;->cause:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setCause(Ljava/lang/String;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;->cause:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;->code:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;->text:Ljava/lang/String;

    .line 39
    return-void
.end method
