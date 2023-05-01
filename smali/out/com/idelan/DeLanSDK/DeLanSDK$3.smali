.class Lcom/idelan/DeLanSDK/DeLanSDK$3;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$code:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 143
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 7

    .prologue
    .line 148
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 149
    const-string v0, "login===="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ltz v0, :cond_5a

    .line 151
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "userId"

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v2}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/idelan/app/Util/SharePreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 156
    :goto_59
    return-void

    .line 154
    :cond_5a
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$3;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_59
.end method
