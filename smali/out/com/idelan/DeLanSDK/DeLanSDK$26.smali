.class Lcom/idelan/DeLanSDK/DeLanSDK$26;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->modiUserInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$userInfo:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/util/HashMap;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 6
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$userInfo:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1008
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 1012
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    if-ne v2, v5, :cond_24

    .line 1013
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v2

    .line 1014
    const-string v4, "userId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1013
    invoke-static {v2, v4, v5}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 1015
    :cond_24
    const-string v2, "modUseInfo"

    .line 1016
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$userInfo:Ljava/util/HashMap;

    .line 1015
    invoke-static {v2, v3}, Lcom/idelan/java/Util/XMLProduct;->packageParmasData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "usInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v2

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v3}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v3

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_modiUserInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1018
    .local v0, "iRet":I
    if-nez v0, :cond_47

    .line 1019
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 1023
    :goto_46
    return-void

    .line 1021
    :cond_47
    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$26;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v2, v0}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_46
.end method
