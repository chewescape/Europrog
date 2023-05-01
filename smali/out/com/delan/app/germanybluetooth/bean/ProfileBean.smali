.class public Lcom/delan/app/germanybluetooth/bean/ProfileBean;
.super Ljava/lang/Object;
.source "ProfileBean.java"


# instance fields
.field public indexStr:Ljava/lang/String;

.field public isSelected:Z

.field public simpleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    .line 15
    return-void
.end method
