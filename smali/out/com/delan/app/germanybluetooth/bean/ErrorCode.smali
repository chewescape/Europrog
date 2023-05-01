.class public Lcom/delan/app/germanybluetooth/bean/ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private error:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode;->error:Ljava/util/List;

    return-object v0
.end method

.method public setError(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "error":Ljava/util/List;, "Ljava/util/List<Lcom/delan/app/germanybluetooth/bean/ErrorCode$ErrorInfo;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/ErrorCode;->error:Ljava/util/List;

    .line 17
    return-void
.end method
