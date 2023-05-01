.class public Lcom/idelan/app/push/PushNotificationBuilder;
.super Ljava/lang/Object;
.source "PushNotificationBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x310fb81daa235459L


# instance fields
.field private mAppId:Ljava/lang/String;

.field mCallClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mCorpId:Ljava/lang/String;

.field private mCorpKey:Ljava/lang/String;

.field public mIcon:I

.field private mLogo:Ljava/lang/String;

.field private mPackName:Ljava/lang/String;

.field private mTickerText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 9
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "corpKey"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "tickerText"    # Ljava/lang/String;
    .param p6, "msgLogo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p7, "showClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCorpId:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mAppId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCorpKey:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mLogo:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mPackName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mTickerText:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mIcon:I

    .line 22
    iput-object p1, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCorpId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mAppId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCorpKey:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCallClass:Ljava/lang/Class;

    .line 26
    iput-object p4, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mPackName:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mLogo:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mTickerText:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCorpId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCorpKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mCallClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method public getTickerText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/idelan/app/push/PushNotificationBuilder;->mTickerText:Ljava/lang/String;

    return-object v0
.end method
