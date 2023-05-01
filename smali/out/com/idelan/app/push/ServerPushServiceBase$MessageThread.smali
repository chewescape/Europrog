.class public Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;
.super Ljava/lang/Thread;
.source "ServerPushServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/push/ServerPushServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageThread"
.end annotation


# static fields
.field static final isDebug:Z = true


# instance fields
.field private corpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idelan/app/push/PushAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAddress:Ljava/lang/String;

.field mChannel:Ljava/nio/channels/SocketChannel;

.field mDefaultNotify:Lcom/idelan/app/push/PushNotificationBuilder;

.field private mLiginDate:Ljava/util/Date;

.field private mRecvDate:Ljava/util/Date;

.field mRuning:Z

.field mSelector:Ljava/nio/channels/Selector;

.field private mSendDate:Ljava/util/Date;

.field mService:Lcom/idelan/app/push/ServerPushServiceBase;

.field mSocket:Ljava/net/Socket;

.field private m_nPhyStatus:I

.field private m_sBuffer:Ljava/lang/String;

.field private messageNotificationID:I

.field private notificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/idelan/app/push/PushNotificationBuilder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/idelan/app/push/ServerPushServiceBase;


# direct methods
.method public constructor <init>(Lcom/idelan/app/push/ServerPushServiceBase;Lcom/idelan/app/push/ServerPushServiceBase;Ljava/lang/String;)V
    .registers 7
    .param p2, "service"    # Lcom/idelan/app/push/ServerPushServiceBase;
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 273
    iput-object p1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->notificationList:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->corpList:Ljava/util/List;

    .line 262
    iput v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->messageNotificationID:I

    .line 263
    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 264
    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 268
    iput v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    .line 270
    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mLiginDate:Ljava/util/Date;

    .line 302
    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mDefaultNotify:Lcom/idelan/app/push/PushNotificationBuilder;

    .line 303
    iput-boolean v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRuning:Z

    .line 304
    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mService:Lcom/idelan/app/push/ServerPushServiceBase;

    .line 276
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "test address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-object p3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private OnReceiveMessage(Ljava/lang/String;)Z
    .registers 19
    .param p1, "sXml"    # Ljava/lang/String;

    .prologue
    .line 861
    :try_start_0
    const-string v2, "xd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "push xml="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v2, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 863
    .local v9, "title":Ljava/lang/String;
    const-string v2, "abstract"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 864
    .local v10, "abstractStr":Ljava/lang/String;
    const-string v2, "content"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 866
    .local v11, "content":Ljava/lang/String;
    const-string v2, "corpId"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 867
    .local v7, "corpId":Ljava/lang/String;
    const-string v2, "appId"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, "appId":Ljava/lang/String;
    const-string v2, "msgId"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 869
    .local v12, "msgId":Ljava/lang/String;
    const-string v2, "report"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getXmlNameValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 871
    .local v16, "report":Ljava/lang/String;
    const-string v2, "xd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abstractStr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v2, Lcom/idelan/app/push/PushIConstants;->PushCorpId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 874
    const/4 v2, 0x0

    .line 912
    .end local v7    # "corpId":Ljava/lang/String;
    .end local v8    # "appId":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "abstractStr":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v12    # "msgId":Ljava/lang/String;
    .end local v16    # "report":Ljava/lang/String;
    :goto_79
    return v2

    .line 877
    .restart local v7    # "corpId":Ljava/lang/String;
    .restart local v8    # "appId":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "abstractStr":Ljava/lang/String;
    .restart local v11    # "content":Ljava/lang/String;
    .restart local v12    # "msgId":Ljava/lang/String;
    .restart local v16    # "report":Ljava/lang/String;
    :cond_7a
    sget-object v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    array-length v15, v2

    .line 878
    .local v15, "length":I
    :cond_7d
    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_df

    .line 886
    sget v2, Lcom/idelan/app/push/ServerPushServiceBase;->idIndex:I

    if-lt v2, v15, :cond_109

    .line 887
    div-int/lit8 v15, v15, 0x2

    sput v15, Lcom/idelan/app/push/ServerPushServiceBase;->idIndex:I

    .line 888
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8a
    if-lt v14, v15, :cond_f1

    .line 896
    .end local v14    # "i":I
    :goto_8c
    sget-object v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    sget v3, Lcom/idelan/app/push/ServerPushServiceBase;->idIndex:I

    aput-object v12, v2, v3

    .line 898
    if-eqz v16, :cond_ba

    const-string v2, "1"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget-object v2, v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    if-eqz v2, :cond_b4

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget-object v3, v3, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 900
    :cond_b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iput-object v12, v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    .line 905
    :cond_ba
    :goto_ba
    const-string v2, "xd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnReceiveMessage content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v2 .. v12}, Lcom/idelan/app/push/ServerPushServiceBase;->NotificatioMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/4 v2, 0x1

    goto :goto_79

    .line 879
    :cond_df
    sget-object v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    aget-object v2, v2, v15

    if-eqz v2, :cond_7d

    .line 882
    sget-object v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    aget-object v2, v2, v15

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 883
    const/4 v2, 0x0

    goto :goto_79

    .line 889
    .restart local v14    # "i":I
    :cond_f1
    sget-object v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    sget-object v3, Lcom/idelan/app/push/ServerPushServiceBase;->msgIdList:[Ljava/lang/String;

    add-int v4, v15, v14

    aget-object v3, v3, v4

    aput-object v3, v2, v14
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fb} :catch_fc

    goto :goto_8a

    .line 909
    .end local v7    # "corpId":Ljava/lang/String;
    .end local v8    # "appId":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "abstractStr":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v12    # "msgId":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "length":I
    .end local v16    # "report":Ljava/lang/String;
    :catch_fc
    move-exception v13

    .line 910
    .local v13, "ex":Ljava/lang/Exception;
    const-string v2, "BroadcastMessage"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v2, 0x0

    goto/16 :goto_79

    .line 893
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v7    # "corpId":Ljava/lang/String;
    .restart local v8    # "appId":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "abstractStr":Ljava/lang/String;
    .restart local v11    # "content":Ljava/lang/String;
    .restart local v12    # "msgId":Ljava/lang/String;
    .restart local v15    # "length":I
    .restart local v16    # "report":Ljava/lang/String;
    :cond_109
    :try_start_109
    sget v2, Lcom/idelan/app/push/ServerPushServiceBase;->idIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/idelan/app/push/ServerPushServiceBase;->idIndex:I

    goto/16 :goto_8c

    .line 902
    :cond_111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget-object v3, v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_130} :catch_fc

    goto :goto_ba
.end method

.method private ParseAddress(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .registers 13
    .param p1, "sAddress"    # Ljava/lang/String;
    .param p2, "bulder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 379
    const-string v3, ""

    .line 381
    .local v3, "sIp":Ljava/lang/String;
    const/16 v2, 0x334b

    .line 382
    .local v2, "port":I
    move-object v4, p1

    .line 383
    .local v4, "stmp":Ljava/lang/String;
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "head":Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 385
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "a":[Ljava/lang/String;
    array-length v6, v0

    if-gt v6, v7, :cond_31

    .line 389
    sget v2, Lcom/idelan/app/push/PushIConstants;->PushPort:I

    .line 390
    invoke-direct {p0, v4}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getIPByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    :goto_28
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5a

    .line 414
    :cond_30
    :goto_30
    return v5

    .line 392
    :cond_31
    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 393
    aget-object v6, v0, v5

    invoke-direct {p0, v6}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getIPByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 399
    .end local v0    # "a":[Ljava/lang/String;
    :cond_3e
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 400
    const-string v6, "tcp://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 401
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    :cond_4e
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 404
    .restart local v0    # "a":[Ljava/lang/String;
    array-length v6, v0

    if-gt v6, v7, :cond_7b

    .line 405
    move-object v3, v4

    .line 406
    const/16 v2, 0x2f63    # 1.6999E-41f

    .line 412
    :cond_5a
    :goto_5a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v5, "Push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 414
    goto :goto_30

    .line 408
    :cond_7b
    aget-object v3, v0, v5

    .line 409
    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_5a
.end method

.method private closeSocket()V
    .registers 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v2, :cond_c

    .line 316
    :try_start_4
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    .line 317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_1d

    .line 323
    :cond_c
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_18

    .line 324
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 325
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_22

    .line 331
    :cond_18
    :goto_18
    const-string v2, ""

    iput-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 333
    return-void

    .line 318
    :catch_1d
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 328
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_22
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private connect()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 418
    const-string v5, ""

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 419
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iput v4, v5, Lcom/idelan/app/push/ServerPushServiceBase;->m_nSocketType:I

    .line 421
    :try_start_a
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_15

    .line 452
    :cond_14
    :goto_14
    return v3

    .line 423
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v2, "sIp":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->ParseAddress(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v1

    .line 425
    .local v1, "port":I
    if-lez v1, :cond_14

    .line 428
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_2e

    .line 429
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V

    .line 430
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    .line 432
    :cond_2e
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v5, :cond_3a

    .line 433
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V

    .line 434
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    .line 436
    :cond_3a
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v5

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    .line 438
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 440
    .local v0, "address":Ljava/net/SocketAddress;
    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v5

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    .line 441
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_14

    .line 443
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 445
    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 446
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    .line 447
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_69

    move v3, v4

    .line 448
    goto :goto_14

    .line 449
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "port":I
    .end local v2    # "sIp":Ljava/lang/StringBuilder;
    :catch_69
    move-exception v4

    goto :goto_14
.end method

.method private connectPushServer()Ljava/lang/Boolean;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 686
    :try_start_1
    const-string v3, ""

    iput-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 687
    const/4 v3, 0x0

    iput v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    .line 688
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    const/4 v4, 0x2

    iput v4, v3, Lcom/idelan/app/push/ServerPushServiceBase;->m_nSocketType:I

    .line 689
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v2, "sIp":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->ParseAddress(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v1

    .line 692
    .local v1, "port":I
    if-gtz v1, :cond_23

    .line 693
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 717
    .end local v1    # "port":I
    .end local v2    # "sIp":Ljava/lang/StringBuilder;
    :goto_22
    return-object v3

    .line 695
    .restart local v1    # "port":I
    .restart local v2    # "sIp":Ljava/lang/StringBuilder;
    :cond_23
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    .line 696
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 697
    const/16 v5, 0x2710

    .line 696
    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 698
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_61

    .line 699
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 700
    const-string v3, "push"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can\'t connect xmpp server!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_22

    .line 703
    :cond_61
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 704
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    .line 705
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->loginPushServer()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_98

    .line 706
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 707
    const-string v3, "push"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can\'t login xmpp server!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_22

    .line 710
    :cond_98
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9c} :catch_9e

    move-result-object v3

    goto :goto_22

    .line 712
    .end local v1    # "port":I
    .end local v2    # "sIp":Ljava/lang/StringBuilder;
    :catch_9e
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    const-string v3, "push"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can\'t login xmpp server!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 717
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_22
.end method

.method private getIPByHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 337
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 339
    .local v1, "x":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 341
    .end local v1    # "x":Ljava/net/InetAddress;
    :goto_8
    return-object v2

    .line 340
    :catch_9
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_8
.end method

.method private loginPushServer()Ljava/lang/Boolean;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 348
    :try_start_1
    const-string v8, "<stream:stream xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" to=\"example.com\" version=\"1.0\">"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "loginInfo":Ljava/lang/String;
    const-string v8, "test"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "test loginInfo="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v7, Ljava/io/DataOutputStream;

    .line 353
    iget-object v8, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 352
    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 354
    .local v7, "sWrite":Ljava/io/DataOutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 355
    .local v0, "data":[B
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v7, v0, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 356
    iget-object v8, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    const/16 v9, 0x7530

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 358
    iget-object v8, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 359
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 360
    .local v3, "input":Ljava/io/DataInputStream;
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 361
    .local v2, "headBuffer":[B
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v2, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .line 362
    .local v5, "length":I
    if-gtz v5, :cond_62

    .line 363
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_57} :catch_59

    move-result-object v8

    .line 372
    .end local v0    # "data":[B
    .end local v2    # "headBuffer":[B
    .end local v3    # "input":Ljava/io/DataInputStream;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "length":I
    .end local v6    # "loginInfo":Ljava/lang/String;
    .end local v7    # "sWrite":Ljava/io/DataOutputStream;
    :goto_58
    return-object v8

    .line 366
    :catch_59
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_58

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v2    # "headBuffer":[B
    .restart local v3    # "input":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "length":I
    .restart local v6    # "loginInfo":Ljava/lang/String;
    .restart local v7    # "sWrite":Ljava/io/DataOutputStream;
    :cond_62
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_58
.end method

.method private onRecvicePackage([BII)Z
    .registers 20
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 920
    :try_start_0
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 921
    new-instance v2, Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "UTF-8"

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {v2, v0, v13, v1, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 924
    .local v2, "data":Ljava/lang/String;
    const-string v13, "test"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "test recvice xml="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_48

    .line 927
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    :cond_48
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 930
    const/4 v7, 0x0

    .line 931
    .local v7, "nBegin":I
    const/4 v5, -0x1

    .line 932
    .local v5, "endPos":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 933
    .local v8, "nDataLen":I
    :goto_54
    if-lt v7, v8, :cond_60

    .line 1012
    :cond_56
    :goto_56
    sub-int v9, v8, v7

    .line 1013
    .local v9, "nLeft":I
    if-lez v9, :cond_17a

    .line 1014
    const/16 v13, 0x1000

    if-lt v9, v13, :cond_172

    .line 1015
    const/4 v13, 0x0

    .line 1028
    .end local v2    # "data":Ljava/lang/String;
    .end local v5    # "endPos":I
    .end local v7    # "nBegin":I
    .end local v8    # "nDataLen":I
    .end local v9    # "nLeft":I
    :goto_5f
    return v13

    .line 934
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v5    # "endPos":I
    .restart local v7    # "nBegin":I
    .restart local v8    # "nDataLen":I
    :cond_60
    const/4 v5, -0x1

    .line 935
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v2, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 936
    .local v11, "sItem":Ljava/lang/String;
    const-string v13, "<"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_72

    .line 937
    add-int/lit8 v7, v7, 0x1

    .line 938
    goto :goto_54

    .line 940
    :cond_72
    const-string v13, " "

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 941
    .local v10, "pos":I
    if-gez v10, :cond_84

    .line 942
    const-string v13, ">"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 943
    if-gtz v10, :cond_84

    .line 944
    move v7, v8

    .line 945
    goto :goto_56

    .line 949
    :cond_84
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v2, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 950
    const-string v13, "stream:stream"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_9a

    .line 951
    const-string v13, "stream"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_ab

    .line 952
    :cond_9a
    const-string v13, ">"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 953
    if-ltz v5, :cond_56

    .line 955
    add-int/lit8 v5, v5, 0x1

    .line 956
    invoke-direct/range {p0 .. p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->registerApp()Z

    .line 1006
    :goto_a7
    if-ltz v5, :cond_56

    .line 1009
    move v7, v5

    goto :goto_54

    .line 957
    :cond_ab
    const-string v13, "message"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_e0

    .line 958
    const-string v13, "</message>"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 959
    if-ltz v5, :cond_56

    .line 961
    const-string v13, ">"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 962
    .local v6, "n":I
    if-ltz v6, :cond_56

    .line 965
    add-int/lit8 v7, v6, 0x1

    .line 966
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 966
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 968
    .local v12, "sMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->OnReceiveMessage(Ljava/lang/String;)Z

    .line 969
    add-int/lit8 v5, v5, 0xa

    .line 970
    goto :goto_a7

    .end local v6    # "n":I
    .end local v12    # "sMsg":Ljava/lang/String;
    :cond_e0
    const-string v13, "iq"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_fe

    .line 971
    const-string v13, "</iq>"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 972
    if-gez v5, :cond_fb

    .line 973
    const-string v13, "/>"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 974
    if-ltz v5, :cond_56

    .line 977
    add-int/lit8 v5, v5, 0x2

    .line 978
    goto :goto_a7

    .line 979
    :cond_fb
    add-int/lit8 v5, v5, 0x5

    .line 981
    goto :goto_a7

    :cond_fe
    const-string v13, "auth"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_148

    .line 982
    const-string v13, "</auth>"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 983
    if-gez v5, :cond_145

    .line 984
    const-string v13, "/>"

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 985
    if-ltz v5, :cond_56

    .line 988
    add-int/lit8 v5, v5, 0x2

    .line 991
    :goto_118
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 991
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 993
    .restart local v12    # "sMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->OnRegisterAppResponse(Ljava/lang/String;)Z
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_130} :catch_132
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_130} :catch_17d

    goto/16 :goto_a7

    .line 1019
    .end local v2    # "data":Ljava/lang/String;
    .end local v5    # "endPos":I
    .end local v7    # "nBegin":I
    .end local v8    # "nDataLen":I
    .end local v10    # "pos":I
    .end local v11    # "sItem":Ljava/lang/String;
    .end local v12    # "sMsg":Ljava/lang/String;
    :catch_132
    move-exception v3

    .line 1020
    .local v3, "e":Ljava/io/IOException;
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 1022
    const/4 v13, 0x0

    goto/16 :goto_5f

    .line 990
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v5    # "endPos":I
    .restart local v7    # "nBegin":I
    .restart local v8    # "nDataLen":I
    .restart local v10    # "pos":I
    .restart local v11    # "sItem":Ljava/lang/String;
    :cond_145
    add-int/lit8 v5, v5, 0x7

    goto :goto_118

    .line 995
    :cond_148
    :try_start_148
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "</"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 996
    .local v4, "endItem":Ljava/lang/String;
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 997
    if-gez v5, :cond_16b

    .line 998
    const-string v4, "/>"

    .line 999
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 1000
    if-ltz v5, :cond_56

    .line 1004
    :cond_16b
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v5, v13

    goto/16 :goto_a7

    .line 1017
    .end local v4    # "endItem":Ljava/lang/String;
    .end local v10    # "pos":I
    .end local v11    # "sItem":Ljava/lang/String;
    .restart local v9    # "nLeft":I
    :cond_172
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_17a} :catch_132
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_17a} :catch_17d

    .line 1028
    :cond_17a
    const/4 v13, 0x1

    goto/16 :goto_5f

    .line 1023
    .end local v2    # "data":Ljava/lang/String;
    .end local v5    # "endPos":I
    .end local v7    # "nBegin":I
    .end local v8    # "nDataLen":I
    .end local v9    # "nLeft":I
    :catch_17d
    move-exception v3

    .line 1024
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1025
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_sBuffer:Ljava/lang/String;

    .line 1026
    const/4 v13, 0x0

    goto/16 :goto_5f
.end method

.method private registerApp()Z
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<auth from=\"amessage.de\" id=\"register\" token=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-static {v2}, Lcom/idelan/app/push/ServerPushServiceBase;->getPushTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, "sAppInfo":Ljava/lang/String;
    new-instance v0, Lcom/idelan/app/push/PushAppInfo;

    sget-object v1, Lcom/idelan/app/push/PushIConstants;->PushAppId:Ljava/lang/String;

    .line 503
    sget-object v2, Lcom/idelan/app/push/PushIConstants;->PushCorpId:Ljava/lang/String;

    .line 504
    sget-object v3, Lcom/idelan/app/push/PushIConstants;->PushKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-virtual {v4}, Lcom/idelan/app/push/ServerPushServiceBase;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 505
    const-string v5, ""

    .line 502
    invoke-direct/range {v0 .. v5}, Lcom/idelan/app/push/PushAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v0, "app":Lcom/idelan/app/push/PushAppInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 513
    .local v12, "stamp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/idelan/app/push/PushAppInfo;->mSign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "sign":Ljava/lang/String;
    invoke-static {v11}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<app id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stamp=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    const-string v2, "\" corpId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" sign=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</auth>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 526
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "test reg xml="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget v1, v1, Lcom/idelan/app/push/ServerPushServiceBase;->m_nSocketType:I

    if-ne v1, v14, :cond_14d

    .line 531
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 532
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_f4

    :cond_f2
    move v1, v13

    .line 569
    :goto_f3
    return v1

    .line 536
    :cond_f4
    const/16 v1, 0x200

    :try_start_f6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 537
    .local v10, "sendbuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 538
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 539
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register APP xml="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v1, "xd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register APP xml="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v10}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 542
    const/4 v1, 0x1

    iput v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    .line 543
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mLiginDate:Ljava/util/Date;
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_13b} :catch_144

    .line 568
    .end local v10    # "sendbuffer":Ljava/nio/ByteBuffer;
    :goto_13b
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    move v1, v14

    .line 569
    goto :goto_f3

    .line 545
    :catch_144
    move-exception v7

    .line 546
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 547
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    move v1, v13

    .line 548
    goto :goto_f3

    .line 553
    .end local v7    # "e":Ljava/io/IOException;
    :cond_14d
    :try_start_14d
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    if-nez v1, :cond_153

    move v1, v13

    .line 554
    goto :goto_f3

    .line 555
    :cond_153
    new-instance v9, Ljava/io/DataOutputStream;

    .line 556
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 555
    invoke-direct {v9, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 557
    .local v9, "sWrite":Ljava/io/DataOutputStream;
    const-string v1, "UTF-8"

    invoke-virtual {v8, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 558
    .local v6, "data":[B
    const/4 v1, 0x0

    array-length v2, v6

    invoke-virtual {v9, v6, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 559
    const/4 v1, 0x1

    iput v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    .line 560
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mLiginDate:Ljava/util/Date;
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_173} :catch_174

    goto :goto_13b

    .line 561
    .end local v6    # "data":[B
    .end local v9    # "sWrite":Ljava/io/DataOutputStream;
    :catch_174
    move-exception v7

    .line 562
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 563
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move v1, v13

    .line 564
    goto/16 :goto_f3
.end method


# virtual methods
.method public OnRegisterAppResponse(Ljava/lang/String;)Z
    .registers 6
    .param p1, "sXml"    # Ljava/lang/String;

    .prologue
    .line 805
    :try_start_0
    const-string v2, " result=\"0\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 806
    .local v1, "pos":I
    if-lez v1, :cond_d

    const/4 v2, 0x2

    :goto_9
    iput v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    .line 810
    .end local v1    # "pos":I
    :goto_b
    const/4 v2, 0x0

    return v2

    .line 806
    .restart local v1    # "pos":I
    :cond_d
    const/4 v2, 0x3

    goto :goto_9

    .line 807
    .end local v1    # "pos":I
    :catch_f
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "BroadcastMessage"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public addNotify(Lcom/idelan/app/push/PushAppInfo;)V
    .registers 7
    .param p1, "notify"    # Lcom/idelan/app/push/PushAppInfo;

    .prologue
    .line 285
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->corpList:Ljava/util/List;

    monitor-enter v2

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->corpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 292
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->corpList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    monitor-exit v2

    .line 295
    :goto_15
    return-void

    .line 286
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idelan/app/push/PushAppInfo;

    .line 287
    .local v0, "app":Lcom/idelan/app/push/PushAppInfo;
    iget-object v3, v0, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    iget-object v4, p1, Lcom/idelan/app/push/PushAppInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 288
    iget-object v3, v0, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    iget-object v4, p1, Lcom/idelan/app/push/PushAppInfo;->mCorpId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 289
    monitor-exit v2

    goto :goto_15

    .line 285
    .end local v0    # "app":Lcom/idelan/app/push/PushAppInfo;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public addNotify(Lcom/idelan/app/push/PushNotificationBuilder;)V
    .registers 3
    .param p1, "notify"    # Lcom/idelan/app/push/PushNotificationBuilder;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->notificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public checkShakeHand(II)Z
    .registers 11
    .param p1, "timeoutMills"    # I
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 573
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 574
    .local v0, "dtNow":Ljava/util/Date;
    iget v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    if-ne v3, v1, :cond_16

    .line 575
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mLiginDate:Ljava/util/Date;

    if-nez v3, :cond_23

    .line 576
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mLiginDate:Ljava/util/Date;

    .line 585
    :cond_16
    iget v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    if-eqz v3, :cond_1f

    iget v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3b

    .line 586
    :cond_1f
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->registerApp()Z

    .line 604
    :goto_22
    return v1

    .line 578
    :cond_23
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mLiginDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-int/lit8 v3, p1, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_16

    .line 579
    iput v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->m_nPhyStatus:I

    .line 580
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->registerApp()Z

    goto :goto_22

    .line 590
    :cond_3b
    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    if-nez v3, :cond_4b

    .line 591
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 604
    :cond_46
    invoke-virtual {p0, p2}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->sendShakeHand(I)Z

    move-result v1

    goto :goto_22

    .line 594
    :cond_4b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-int/lit8 v3, p1, 0x3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_62

    .line 595
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    move v1, v2

    .line 596
    goto :goto_22

    .line 598
    :cond_62
    iget-object v2, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    if-eqz v2, :cond_46

    .line 599
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_46

    goto :goto_22
.end method

.method public clientRun(I)I
    .registers 16
    .param p1, "nTimeOutMills"    # I

    .prologue
    .line 610
    :try_start_0
    const-string v5, "<stream:stream xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" to=\"example.com\" version=\"1.0\">"

    .line 611
    .local v5, "loginInfo":Ljava/lang/String;
    const/16 v11, 0x100

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 612
    .local v10, "sendbuffer":Ljava/nio/ByteBuffer;
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    const/4 v12, 0x1

    iput v12, v11, Lcom/idelan/app/push/ServerPushServiceBase;->m_nSocketType:I

    .line 613
    div-int/lit8 v11, p1, 0x2

    add-int v7, p1, v11

    .line 614
    .local v7, "nFailTimeOut":I
    :cond_11
    :goto_11
    iget-boolean v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRuning:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_42

    if-nez v11, :cond_17

    .line 677
    const/4 v11, 0x1

    .line 680
    .end local v5    # "loginInfo":Ljava/lang/String;
    .end local v7    # "nFailTimeOut":I
    .end local v10    # "sendbuffer":Ljava/nio/ByteBuffer;
    :goto_16
    return v11

    .line 617
    .restart local v5    # "loginInfo":Ljava/lang/String;
    .restart local v7    # "nFailTimeOut":I
    .restart local v10    # "sendbuffer":Ljava/nio/ByteBuffer;
    :cond_17
    :try_start_17
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v11, :cond_2b

    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v11}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 618
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v11}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v11

    if-nez v11, :cond_77

    .line 619
    :cond_2b
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-virtual {v11}, Lcom/idelan/app/push/ServerPushServiceBase;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_4e

    .line 620
    const-wide/32 v12, 0x9c40

    invoke-static {v12, v13}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_3a

    goto :goto_11

    .line 671
    :catch_3a
    move-exception v2

    .line 673
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_11

    .line 678
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "loginInfo":Ljava/lang/String;
    .end local v7    # "nFailTimeOut":I
    .end local v10    # "sendbuffer":Ljava/nio/ByteBuffer;
    :catch_42
    move-exception v2

    .line 679
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v11, "push"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v11, -0x1

    goto :goto_16

    .line 623
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "loginInfo":Ljava/lang/String;
    .restart local v7    # "nFailTimeOut":I
    .restart local v10    # "sendbuffer":Ljava/nio/ByteBuffer;
    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->connect()Z

    move-result v11

    if-nez v11, :cond_5b

    .line 624
    const-wide/32 v12, 0xea60

    invoke-static {v12, v13}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->sleep(J)V

    goto :goto_11

    .line 627
    :cond_5b
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 628
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 629
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 630
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 631
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v11, v10}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 632
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    iput-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    .line 634
    :cond_77
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    int-to-long v12, p1

    invoke-virtual {v11, v12, v13}, Ljava/nio/channels/Selector;->select(J)I

    move-result v6

    .line 635
    .local v6, "nEvents":I
    if-nez v6, :cond_85

    .line 636
    const/4 v11, 0x1

    invoke-virtual {p0, v7, v11}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->checkShakeHand(II)Z

    goto :goto_11

    .line 641
    :cond_85
    iget-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v11}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v11

    .line 642
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 643
    .local v3, "iter":Ljava/util/Iterator;
    :cond_8f
    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 644
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 645
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 646
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 647
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v9

    check-cast v9, Ljava/nio/channels/SocketChannel;

    .line 650
    .local v9, "sc":Ljava/nio/channels/SocketChannel;
    const/16 v11, 0x400

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 651
    .local v8, "readBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 653
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_b5
    invoke-virtual {v9, v8}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v11

    if-gtz v11, :cond_d9

    .line 657
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    if-lez v11, :cond_e4

    .line 658
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    iput-object v11, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 659
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 660
    .local v0, "b":[B
    const/4 v11, 0x0

    array-length v12, v0

    invoke-direct {p0, v0, v11, v12}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->onRecvicePackage([BII)Z

    move-result v11

    if-nez v11, :cond_e7

    .line 661
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    goto/16 :goto_11

    .line 654
    .end local v0    # "b":[B
    :cond_d9
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 655
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_b5

    .line 665
    :cond_e4
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 667
    :cond_e7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_ea} :catch_3a

    goto :goto_8f
.end method

.method getReviceXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "msgIds"    # Ljava/lang/String;

    .prologue
    .line 835
    const-string v0, "push"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callBack msgIds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<res rd=\"0\" >"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</res>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlNameValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 816
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "><![CDATA["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "starCDTATA":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "]]></"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "endCDATA":Ljava/lang/String;
    move-object v3, p2

    .line 819
    .local v3, "request":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 820
    .local v2, "index":I
    if-gez v2, :cond_34

    move-object v3, v5

    .line 830
    .end local v1    # "endCDATA":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "starCDTATA":Ljava/lang/String;
    :goto_33
    return-object v3

    .line 823
    .restart local v1    # "endCDATA":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v3    # "request":Ljava/lang/String;
    .restart local v4    # "starCDTATA":Ljava/lang/String;
    :cond_34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 824
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 826
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v3

    .line 827
    goto :goto_33

    .line 829
    .end local v1    # "endCDATA":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "starCDTATA":Ljava/lang/String;
    :catch_47
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 830
    goto :goto_33
.end method

.method public getXmlNameValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 841
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "starCDTATA":Ljava/lang/String;
    const-string v1, "\""

    .line 842
    .local v1, "endCDATA":Ljava/lang/String;
    move-object v3, p2

    .line 843
    .local v3, "request":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 844
    .local v2, "index":I
    if-gez v2, :cond_21

    move-object v3, v5

    .line 854
    .end local v1    # "endCDATA":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "starCDTATA":Ljava/lang/String;
    :goto_20
    return-object v3

    .line 847
    .restart local v1    # "endCDATA":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v3    # "request":Ljava/lang/String;
    .restart local v4    # "starCDTATA":Ljava/lang/String;
    :cond_21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 848
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 849
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 850
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    move-result-object v3

    .line 851
    goto :goto_20

    .line 853
    .end local v1    # "endCDATA":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "starCDTATA":Ljava/lang/String;
    :catch_34
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 854
    goto :goto_20
.end method

.method public run()V
    .registers 16

    .prologue
    const/16 v14, 0x800

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 722
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRuning:Z

    .line 723
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-static {v9}, Lcom/idelan/app/push/ServerPushServiceBase;->getPushTokenId(Landroid/content/Context;)Ljava/lang/String;

    .line 724
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 725
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    long-to-int v9, v10

    iput v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->messageNotificationID:I

    .line 728
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iput v13, v9, Lcom/idelan/app/push/ServerPushServiceBase;->m_nSocketType:I

    .line 729
    new-array v4, v14, [B

    .line 730
    .local v4, "headBuffer":[B
    :cond_1e
    :goto_1e
    iget-boolean v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRuning:Z

    if-nez v9, :cond_2f

    .line 798
    :cond_22
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-static {v9, v12}, Lcom/idelan/app/push/ServerPushServiceBase;->access$0(Lcom/idelan/app/push/ServerPushServiceBase;Z)V

    .line 799
    const-string v9, "push"

    const-string v10, "thread exit"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_2e
    return-void

    .line 731
    :cond_2f
    sget-boolean v9, Lcom/idelan/app/push/ServerPushServiceBase;->isStop:Z

    if-nez v9, :cond_2e

    .line 735
    :try_start_33
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    if-eqz v9, :cond_47

    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isClosed()Z

    move-result v9

    if-nez v9, :cond_47

    .line 736
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z

    move-result v9

    if-nez v9, :cond_75

    .line 737
    :cond_47
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-virtual {v9}, Lcom/idelan/app/push/ServerPushServiceBase;->isNetworkAvailable()Z

    move-result v9

    if-nez v9, :cond_5e

    .line 738
    const-wide/32 v10, 0x9c40

    invoke-static {v10, v11}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_55} :catch_56

    goto :goto_1e

    .line 792
    :catch_56
    move-exception v2

    .line 793
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    goto :goto_1e

    .line 741
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5e
    :try_start_5e
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->connectPushServer()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_75

    .line 742
    const-string v9, "push"

    const-string v10, "can\'t connect server"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-wide/16 v10, 0x1388

    invoke-static {v10, v11}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->sleep(J)V

    goto :goto_1e

    .line 748
    :cond_75
    const v9, 0x493e0

    const/4 v10, 0x2

    invoke-virtual {p0, v9, v10}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->checkShakeHand(II)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 751
    const-string v9, "xd"

    const-string v10, "checkShakeHand"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-boolean v9, Lcom/idelan/app/push/ServerPushServiceBase;->isStop:Z

    if-nez v9, :cond_2e

    .line 755
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    const/16 v10, 0x3a98

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 756
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 757
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9c} :catch_56

    .line 758
    .local v5, "input":Ljava/io/DataInputStream;
    const/4 v7, -0x1

    .line 760
    .local v7, "length":I
    const/4 v9, 0x0

    const/16 v10, 0x800

    :try_start_a0
    invoke-virtual {v5, v4, v9, v10}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_a3
    .catch Ljava/net/SocketTimeoutException; {:try_start_a0 .. :try_end_a3} :catch_af
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_56

    move-result v7

    .line 766
    :try_start_a4
    iget-boolean v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRuning:Z

    if-eqz v9, :cond_22

    .line 768
    if-gtz v7, :cond_b3

    .line 769
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    goto/16 :goto_1e

    .line 762
    :catch_af
    move-exception v2

    .line 763
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/4 v7, -0x1

    goto/16 :goto_1e

    .line 772
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_b3
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    iput-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRecvDate:Ljava/util/Date;

    .line 773
    sget-boolean v9, Lcom/idelan/app/push/ServerPushServiceBase;->isStop:Z

    if-nez v9, :cond_2e

    .line 776
    const/4 v9, 0x0

    invoke-direct {p0, v4, v9, v7}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->onRecvicePackage([BII)Z

    .line 778
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget-object v9, v9, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    if-eqz v9, :cond_1e

    const-string v9, ""

    iget-object v10, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget-object v10, v10, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_d1} :catch_56

    move-result v9

    if-nez v9, :cond_1e

    .line 782
    :try_start_d4
    new-instance v8, Ljava/io/DataOutputStream;

    .line 783
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 782
    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 784
    .local v8, "sWrite":Ljava/io/DataOutputStream;
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    iget-object v9, v9, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->getReviceXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 785
    .local v0, "data":[B
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v8, v0, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 786
    iget-object v9, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/idelan/app/push/ServerPushServiceBase;->msgIds:Ljava/lang/String;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f7} :catch_f9

    goto/16 :goto_1e

    .line 787
    .end local v0    # "data":[B
    .end local v8    # "sWrite":Ljava/io/DataOutputStream;
    :catch_f9
    move-exception v3

    .line 788
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_fa
    const-string v9, "push"

    const-string v10, "msg callback"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_104} :catch_56

    goto/16 :goto_1e
.end method

.method public sendShakeHand(I)Z
    .registers 12
    .param p1, "flag"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<iq from=\"amessage.de\" id=\"heart\" type=\"set\" latitude=\"0\" longitude=\"0\" appkey=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    iget-object v8, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->this$0:Lcom/idelan/app/push/ServerPushServiceBase;

    invoke-static {v8}, Lcom/idelan/app/push/ServerPushServiceBase;->getPushTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 456
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "sAppInfo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "</iq>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    const-string v7, "test"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "test sAppInfo="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-ne p1, v6, :cond_81

    .line 463
    iget-object v7, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v7, :cond_5a

    iget-object v7, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v7}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 464
    iget-object v7, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v7}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_5b

    .line 494
    :cond_5a
    :goto_5a
    return v5

    .line 468
    :cond_5b
    const/16 v7, 0x200

    :try_start_5d
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 469
    .local v4, "sendbuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 470
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 471
    iget-object v7, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v7, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_70} :catch_79

    .line 493
    .end local v4    # "sendbuffer":Ljava/nio/ByteBuffer;
    :goto_70
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSendDate:Ljava/util/Date;

    move v5, v6

    .line 494
    goto :goto_5a

    .line 473
    :catch_79
    move-exception v1

    .line 474
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 475
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    goto :goto_5a

    .line 481
    .end local v1    # "e":Ljava/io/IOException;
    :cond_81
    :try_start_81
    iget-object v7, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    if-eqz v7, :cond_5a

    .line 483
    new-instance v3, Ljava/io/DataOutputStream;

    .line 484
    iget-object v7, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 483
    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 485
    .local v3, "sWrite":Ljava/io/DataOutputStream;
    const-string v7, "UTF-8"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 486
    .local v0, "data":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_9b} :catch_9c

    goto :goto_70

    .line 487
    .end local v0    # "data":[B
    .end local v3    # "sWrite":Ljava/io/DataOutputStream;
    :catch_9c
    move-exception v1

    .line 488
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 489
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a
.end method

.method public setDefaultNotifyBuilder(Lcom/idelan/app/push/PushNotificationBuilder;)V
    .registers 2
    .param p1, "builder"    # Lcom/idelan/app/push/PushNotificationBuilder;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mDefaultNotify:Lcom/idelan/app/push/PushNotificationBuilder;

    .line 299
    return-void
.end method

.method public userStop()V
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mRuning:Z

    .line 309
    invoke-direct {p0}, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->closeSocket()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/push/ServerPushServiceBase$MessageThread;->mService:Lcom/idelan/app/push/ServerPushServiceBase;

    .line 311
    return-void
.end method
