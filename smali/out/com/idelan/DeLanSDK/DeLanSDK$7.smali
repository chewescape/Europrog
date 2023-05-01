.class Lcom/idelan/DeLanSDK/DeLanSDK$7;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$authCode:Ljava/lang/String;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$invteCode:Ljava/lang/String;

.field private final synthetic val$mobile:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 10
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$mobile:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$authCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$email:Ljava/lang/String;

    iput-object p8, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$invteCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 324
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 10

    .prologue
    .line 328
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$username:Ljava/lang/String;

    .line 329
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$mobile:Ljava/lang/String;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$authCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$email:Ljava/lang/String;

    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$invteCode:Ljava/lang/String;

    .line 328
    invoke-virtual/range {v0 .. v7}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_registerUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 330
    .local v8, "iRet":I
    if-nez v8, :cond_25

    .line 331
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 335
    :goto_24
    return-void

    .line 333
    :cond_25
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$7;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v8}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_24
.end method
