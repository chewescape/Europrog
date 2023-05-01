.class Lcom/idelan/DeLanSDK/DeLanSDK$11;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->unbindDevice(Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$deviceSerial:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 5
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->val$deviceSerial:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 460
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 464
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    if-ne v1, v4, :cond_24

    .line 465
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v1

    .line 466
    const-string v3, "userId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 465
    invoke-static {v1, v3, v4}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 467
    :cond_24
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->val$deviceSerial:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_unbindDevice(ILjava/lang/String;)I

    move-result v0

    .line 468
    .local v0, "iRet":I
    if-nez v0, :cond_3f

    .line 469
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 474
    :goto_3e
    return-void

    .line 471
    :cond_3f
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$11;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v1, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_3e
.end method
