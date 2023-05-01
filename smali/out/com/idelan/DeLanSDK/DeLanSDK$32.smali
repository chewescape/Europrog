.class Lcom/idelan/DeLanSDK/DeLanSDK$32;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->bsdkCheckDeviceNewVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$deviceMode:Ljava/lang/String;

.field private final synthetic val$deviceSerial:Ljava/lang/String;

.field private final synthetic val$deviceSoftVer:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$deviceSerial:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$deviceMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$deviceSoftVer:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1307
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 1310
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 1311
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 1312
    const-string v2, "userId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1311
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 1313
    :cond_24
    const/4 v7, 0x0

    .line 1314
    .local v7, "verName":Ljava/lang/String;
    const/16 v0, 0xa

    new-array v5, v0, [B

    .line 1317
    .local v5, "newVersion":[B
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    .line 1318
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$deviceSerial:Ljava/lang/String;

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$deviceMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$deviceSoftVer:Ljava/lang/String;

    .line 1317
    invoke-virtual/range {v0 .. v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_checkDeviceNewVersion(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v6

    .line 1319
    .local v6, "iRet":I
    if-nez v6, :cond_50

    .line 1320
    new-instance v7, Ljava/lang/String;

    .end local v7    # "verName":Ljava/lang/String;
    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 1321
    .restart local v7    # "verName":Ljava/lang/String;
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 1325
    :goto_4f
    return-void

    .line 1323
    :cond_50
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$32;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_4f
.end method
