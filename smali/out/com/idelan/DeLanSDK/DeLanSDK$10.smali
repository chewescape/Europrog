.class Lcom/idelan/DeLanSDK/DeLanSDK$10;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$deviceName:Ljava/lang/String;

.field private final synthetic val$devicePasswd:Ljava/lang/String;

.field private final synthetic val$deviceSerial:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$deviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$deviceSerial:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$devicePasswd:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 424
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 428
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    if-ne v2, v5, :cond_24

    .line 429
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v2

    .line 430
    const-string v4, "userId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 429
    invoke-static {v2, v4, v5}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 431
    :cond_24
    const-string v0, ""

    .line 432
    .local v0, "deviceN":Ljava/lang/String;
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$deviceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 433
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$deviceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/idelan/Charset/CharTools;->Utf8URLencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_34
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v2

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v3

    .line 436
    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$deviceSerial:Ljava/lang/String;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$devicePasswd:Ljava/lang/String;

    .line 435
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_bindDevice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 437
    .local v1, "iRet":I
    if-nez v1, :cond_51

    .line 438
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 442
    :goto_50
    return-void

    .line 440
    :cond_51
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$10;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v2, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_50
.end method
