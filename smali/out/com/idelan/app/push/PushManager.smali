.class public Lcom/idelan/app/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NotifyMessage(Landroid/content/Context;Lcom/idelan/app/push/PushNotificationBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/idelan/app/push/PushNotificationBuilder;
    .param p2, "sMsgId"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v10, "notifyIntent":Landroid/content/Intent;
    const-string v11, "extra"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance v11, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 126
    invoke-virtual {p1}, Lcom/idelan/app/push/PushNotificationBuilder;->getNotifyClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    const/high16 v11, 0x10200000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 131
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    long-to-int v9, v12

    .line 135
    .local v9, "notifyId":I
    const/high16 v11, 0x8000000

    .line 133
    invoke-static {p0, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 152
    .local v6, "messagePendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 153
    .local v3, "iconId":I
    sget v11, Lcom/idelan/app/push/PushIConstants;->PushIcon:I

    if-nez v11, :cond_7e

    .line 154
    const-string v11, "icon"

    invoke-static {p0, v11}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 157
    :goto_4c
    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p1}, Lcom/idelan/app/push/PushNotificationBuilder;->getTickerText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 161
    .local v7, "nbuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 162
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 166
    .local v8, "notify":Landroid/app/Notification;
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 165
    check-cast v5, Landroid/app/NotificationManager;

    .line 168
    .local v5, "messageNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v5, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 169
    const/4 v11, 0x1

    .line 173
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "iconId":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "messageNotificationManager":Landroid/app/NotificationManager;
    .end local v6    # "messagePendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "nbuilder":Landroid/app/Notification$Builder;
    .end local v8    # "notify":Landroid/app/Notification;
    .end local v9    # "notifyId":I
    .end local v10    # "notifyIntent":Landroid/content/Intent;
    :goto_7d
    return v11

    .line 156
    .restart local v2    # "date":Ljava/util/Date;
    .restart local v3    # "iconId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "messagePendingIntent":Landroid/app/PendingIntent;
    .restart local v9    # "notifyId":I
    .restart local v10    # "notifyIntent":Landroid/content/Intent;
    :cond_7e
    sget v3, Lcom/idelan/app/push/PushIConstants;->PushIcon:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81

    goto :goto_4c

    .line 170
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "iconId":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "messagePendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "notifyId":I
    .end local v10    # "notifyIntent":Landroid/content/Intent;
    :catch_81
    move-exception v11

    .line 173
    const/4 v11, 0x0

    goto :goto_7d
.end method

.method public static activityStarted(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method public static activityStoped(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    return-void
.end method

.method public static delTags(Landroid/content/Context;Ljava/util/List;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public static isPushEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 73
    const-string v2, "PushMessage"

    .line 74
    const/4 v3, 0x0

    .line 73
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_10

    .line 76
    const-string v2, "OpenFlag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    :cond_10
    return v1
.end method

.method public static registerPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "corpKey"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "sDefLogo"    # Ljava/lang/String;
    .param p5, "activityName"    # Ljava/lang/String;
    .param p6, "intentFilterAction"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/idelan/app/push/PushManager;->isPushEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 43
    const/4 v1, 0x0

    .line 53
    :goto_7
    return v1

    .line 45
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "XDeLan-Push"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, p2}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "sSign":Ljava/lang/String;
    new-instance v0, Lcom/idelan/app/push/PushAppInfo;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p3

    move-object v2, p1

    move-object v5, p4

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/idelan/app/push/PushAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v0, "appInfo":Lcom/idelan/app/push/PushAppInfo;
    invoke-static {p0, v0, p5, p6}, Lcom/idelan/app/push/PushManager;->startWork(Landroid/content/Context;Lcom/idelan/app/push/PushAppInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public static setDefaultNotificationBuilder(Landroid/content/Context;Lcom/idelan/app/push/PushNotificationBuilder;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationBuilder"    # Lcom/idelan/app/push/PushNotificationBuilder;

    .prologue
    .line 105
    return-void
.end method

.method public static setMediaNotificationBuilder(Landroid/content/Context;Lcom/idelan/app/push/PushNotificationBuilder;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationBuilder"    # Lcom/idelan/app/push/PushNotificationBuilder;

    .prologue
    .line 110
    return-void
.end method

.method public static setNotificationBuilder(Landroid/content/Context;ILcom/idelan/app/push/PushNotificationBuilder;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "notificationBuilder"    # Lcom/idelan/app/push/PushNotificationBuilder;

    .prologue
    .line 100
    return-void
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/List;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public static startWork(Landroid/content/Context;Lcom/idelan/app/push/PushAppInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Lcom/idelan/app/push/PushAppInfo;
    .param p2, "notifyIntent"    # Ljava/lang/String;
    .param p3, "intentFilterAction"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idelan/app/push/ServerPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "appInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    const/4 v1, 0x1

    return v1
.end method

.method public static unRegisterPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
