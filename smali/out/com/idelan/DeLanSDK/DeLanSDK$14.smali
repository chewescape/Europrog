.class Lcom/idelan/DeLanSDK/DeLanSDK$14;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->addShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$applianceSerial:Ljava/lang/String;

.field private final synthetic val$deviceSerial:Ljava/lang/String;

.field private final synthetic val$endTime:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$shareType:I

.field private final synthetic val$startTime:Ljava/lang/String;

.field private final synthetic val$toUser:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 10
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$toUser:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$deviceSerial:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$applianceSerial:Ljava/lang/String;

    iput p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$shareType:I

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$startTime:Ljava/lang/String;

    iput-object p8, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$endTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 605
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 11

    .prologue
    const/4 v3, -0x1

    .line 609
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 610
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 611
    const-string v2, "userId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 610
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 612
    :cond_24
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$toUser:Ljava/lang/String;

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$deviceSerial:Ljava/lang/String;

    .line 613
    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$applianceSerial:Ljava/lang/String;

    iget v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$shareType:I

    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$startTime:Ljava/lang/String;

    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$endTime:Ljava/lang/String;

    const-string v8, ""

    .line 612
    invoke-virtual/range {v0 .. v8}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_addShare(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 614
    .local v9, "iRet":I
    if-nez v9, :cond_4b

    .line 615
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 619
    :goto_4a
    return-void

    .line 617
    :cond_4b
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$14;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v9}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_4a
.end method
