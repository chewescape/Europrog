.class Lcom/idelan/DeLanSDK/DeLanSDK$24;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->modiPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$phoneNumber:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

.field private final synthetic val$userName:Ljava/lang/String;

.field private final synthetic val$verifyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 8
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$phoneNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$verifyCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 915
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 919
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 920
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 921
    const-string v2, "userId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 920
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 922
    :cond_24
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$userName:Ljava/lang/String;

    .line 923
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$phoneNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$verifyCode:Ljava/lang/String;

    .line 922
    invoke-virtual/range {v0 .. v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_modiPhoneNumber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 924
    .local v6, "iRet":I
    if-nez v6, :cond_45

    .line 925
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 929
    :goto_44
    return-void

    .line 927
    :cond_45
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$24;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_44
.end method
