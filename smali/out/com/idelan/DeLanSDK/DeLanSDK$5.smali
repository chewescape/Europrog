.class Lcom/idelan/DeLanSDK/DeLanSDK$5;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->send(I[BLjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$cmd:I

.field private final synthetic val$data:[B

.field private final synthetic val$params:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;II[BLjava/lang/String;Lcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 7
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$cmd:I

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$data:[B

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$params:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 211
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 216
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iput v3, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCmd:I

    .line 217
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const v1, -0xffff

    iput v1, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    .line 218
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retData:[B

    .line 220
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v3, :cond_3a

    .line 221
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 222
    const-string v2, "userId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 221
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 223
    :cond_3a
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$cmd:I

    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$data:[B

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$data:[B

    array-length v4, v4

    .line 224
    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$params:Ljava/lang/String;

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_send(II[BILjava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "iRet":I
    if-nez v6, :cond_73

    .line 228
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, v0, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v0, v0, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    if-nez v0, :cond_67

    .line 229
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, v1, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    invoke-interface {v0, v6, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 236
    :goto_66
    return-void

    .line 231
    :cond_67
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v1, v1, Lcom/idelan/DeLanSDK/DeLanSDK;->objResponse:Lcom/idelan/DeLanSDK/ResponseObject;

    iget v1, v1, Lcom/idelan/DeLanSDK/ResponseObject;->retCode:I

    invoke-interface {v0, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_66

    .line 234
    :cond_73
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$5;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v6}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_66
.end method
