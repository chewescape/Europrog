.class Lcom/idelan/DeLanSDK/DeLanSDK$29;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->commonSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BLcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$dataDict:Ljava/util/HashMap;

.field private final synthetic val$datas:[B

.field private final synthetic val$funcName:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$uri:Ljava/lang/String;

.field private final synthetic val$uriParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;I[BLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 9
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$datas:[B

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$funcName:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$dataDict:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$uri:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$uriParams:Ljava/lang/String;

    iput-object p8, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1121
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v4, -0x1

    .line 1125
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v4, :cond_25

    .line 1126
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 1127
    const-string v2, "userId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1126
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 1128
    :cond_25
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v4, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 1129
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v1, -0xffff

    iput v1, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 1130
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 1131
    const/4 v5, 0x0

    .line 1132
    .local v5, "pDatBuf":[B
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$datas:[B

    if-nez v0, :cond_b0

    .line 1133
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$funcName:Ljava/lang/String;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$dataDict:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/idelan/java/Util/XMLProduct;->packageParmasData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1137
    :goto_4c
    const-string v0, "commonSend====="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$funcName:Ljava/lang/String;

    .line 1139
    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$uriParams:Ljava/lang/String;

    array-length v6, v5

    .line 1138
    invoke-virtual/range {v0 .. v6}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_commonSend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result v7

    .line 1141
    .local v7, "iRet":I
    if-nez v7, :cond_cf

    .line 1143
    new-instance v9, Ljava/lang/String;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1144
    .local v9, "result":Ljava/lang/String;
    const-string v0, "<?xml"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 1146
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v0, :cond_b9

    .line 1149
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    invoke-static {v0}, Lcom/idelan/xml/parser/SDKFunctions;->parseResultCode([B)I

    move-result v8

    .line 1151
    .local v8, "iRetDev":I
    if-nez v8, :cond_b3

    .line 1152
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1154
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, v1, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    .line 1152
    invoke-interface {v0, v10, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 1168
    .end local v8    # "iRetDev":I
    .end local v9    # "result":Ljava/lang/String;
    :goto_af
    return-void

    .line 1136
    .end local v7    # "iRet":I
    :cond_b0
    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$datas:[B

    goto :goto_4c

    .line 1156
    .restart local v7    # "iRet":I
    .restart local v8    # "iRetDev":I
    .restart local v9    # "result":Ljava/lang/String;
    :cond_b3
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v8}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_af

    .line 1159
    .end local v8    # "iRetDev":I
    :cond_b9
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, v1, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v1, v1, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v0, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_af

    .line 1162
    :cond_c5
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1163
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, v1, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    .line 1162
    invoke-interface {v0, v10, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    goto :goto_af

    .line 1166
    .end local v9    # "result":Ljava/lang/String;
    :cond_cf
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$29;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v7}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_af
.end method
