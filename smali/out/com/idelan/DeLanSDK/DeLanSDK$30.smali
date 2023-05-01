.class Lcom/idelan/DeLanSDK/DeLanSDK$30;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->commonSendUnLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$dataDict:Ljava/util/HashMap;

.field private final synthetic val$funcName:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$uri:Ljava/lang/String;

.field private final synthetic val$uriParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 8
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$funcName:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$dataDict:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$uri:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$uriParams:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1191
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 10

    .prologue
    const/4 v4, -0x1

    .line 1195
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v4, :cond_24

    .line 1196
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 1197
    const-string v2, "userId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1196
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 1198
    :cond_24
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v4, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 1199
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v1, -0xffff

    iput v1, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 1200
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 1201
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$funcName:Ljava/lang/String;

    .line 1202
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$dataDict:Ljava/util/HashMap;

    .line 1201
    invoke-static {v0, v1}, Lcom/idelan/java/Util/XMLProduct;->packageParmasData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1203
    .local v5, "pDatBuf":[B
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$uri:Ljava/lang/String;

    .line 1204
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$funcName:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$uriParams:Ljava/lang/String;

    array-length v6, v5

    .line 1203
    invoke-virtual/range {v0 .. v6}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_commonSendUnLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result v7

    .line 1206
    .local v7, "iRet":I
    if-nez v7, :cond_90

    .line 1209
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v0, :cond_84

    .line 1212
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    invoke-static {v0}, Lcom/idelan/xml/parser/SDKFunctions;->parseResultCode([B)I

    move-result v8

    .line 1214
    .local v8, "iRetDev":I
    if-nez v8, :cond_7e

    .line 1215
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    .line 1216
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v2, v2, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    .line 1215
    invoke-interface {v0, v1, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 1226
    .end local v8    # "iRetDev":I
    :goto_7d
    return-void

    .line 1218
    .restart local v8    # "iRetDev":I
    :cond_7e
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v8}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_7d

    .line 1221
    .end local v8    # "iRetDev":I
    :cond_84
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, v1, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v1, v1, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v0, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_7d

    .line 1224
    :cond_90
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$30;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v7}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_7d
.end method
