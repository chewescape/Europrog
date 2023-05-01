.class Lcom/idelan/DeLanSDK/DeLanSDK$23;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->resetPasswordByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$newPasswd:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput-object p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$newPasswd:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$phoneNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$verifyCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 884
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 8

    .prologue
    .line 888
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$1(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget-object v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$userName:Ljava/lang/String;

    .line 889
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$newPasswd:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$phoneNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$verifyCode:Ljava/lang/String;

    .line 888
    invoke-virtual/range {v0 .. v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_resetPasswordByPhone(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 890
    .local v6, "iRet":I
    if-nez v6, :cond_21

    .line 891
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 895
    :goto_20
    return-void

    .line 893
    :cond_21
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$23;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_20
.end method
