.class public Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
.super Ljava/lang/Object;
.source "DataBaseBean.java"


# instance fields
.field public address:Ljava/lang/String;

.field public coblVersion:Ljava/lang/String;

.field public originalName:Ljava/lang/String;

.field public pin:I

.field public rfblVersion:Ljava/lang/String;

.field public showName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "originalName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->originalName:Ljava/lang/String;

    .line 17
    return-void
.end method
