.class Lcom/idelan/app/push/PushAppInfo;
.super Ljava/lang/Object;
.source "PushAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mCorpId:Ljava/lang/String;

.field public mDefLogo:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mSign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "defLogo"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushAppInfo;->mSign:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushAppInfo;->mDefLogo:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushAppInfo;->mPackageName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/idelan/app/push/PushAppInfo;->mDefLogo:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/idelan/app/push/PushAppInfo;->mPackageName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/idelan/app/push/PushAppInfo;->mSign:Ljava/lang/String;

    .line 18
    return-void
.end method
