.class Lcom/idelan/DeLanSDK/DeLanSDK$28;
.super Lcom/idelan/task/Task;
.source "DeLanSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/DeLanSDK/DeLanSDK;->updateMemberAvatar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/idelan/DeLanSDK/ResponseMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

.field private final synthetic val$funName:Ljava/lang/String;

.field private final synthetic val$indexName:Ljava/lang/String;

.field private final synthetic val$indexValue:I

.field private final synthetic val$picBuf:[B

.field private final synthetic val$picType:Ljava/lang/String;

.field private final synthetic val$response:Lcom/idelan/DeLanSDK/ResponseMethod;


# direct methods
.method constructor <init>(Lcom/idelan/DeLanSDK/DeLanSDK;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/idelan/DeLanSDK/ResponseMethod;)V
    .registers 9
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iput p3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$indexValue:I

    iput-object p4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$indexName:Ljava/lang/String;

    iput-object p5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$funName:Ljava/lang/String;

    iput-object p6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$picType:Ljava/lang/String;

    iput-object p7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$picBuf:[B

    iput-object p8, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    .line 1084
    invoke-direct {p0, p2}, Lcom/idelan/task/Task;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .registers 10

    .prologue
    const/4 v3, -0x1

    .line 1087
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 1088
    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$4(Lcom/idelan/DeLanSDK/DeLanSDK;)Landroid/content/Context;

    move-result-object v0

    .line 1089
    const-string v2, "userId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1088
    invoke-static {v0, v2, v3}, Lcom/idelan/app/Util/SharePreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$2(Lcom/idelan/DeLanSDK/DeLanSDK;I)V

    .line 1090
    :cond_24
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v0}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$0(Lcom/idelan/DeLanSDK/DeLanSDK;)Lcom/idelan/BasicSDK/BasicSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->this$0:Lcom/idelan/DeLanSDK/DeLanSDK;

    invoke-static {v1}, Lcom/idelan/DeLanSDK/DeLanSDK;->access$3(Lcom/idelan/DeLanSDK/DeLanSDK;)I

    move-result v1

    iget v2, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$indexValue:I

    .line 1091
    iget-object v3, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$indexName:Ljava/lang/String;

    iget-object v4, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$funName:Ljava/lang/String;

    iget-object v5, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$picType:Ljava/lang/String;

    iget-object v6, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$picBuf:[B

    iget-object v7, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$picBuf:[B

    array-length v7, v7

    .line 1090
    invoke-virtual/range {v0 .. v7}, Lcom/idelan/BasicSDK/BasicSDK;->bsdk_updateMemberAvatar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result v8

    .line 1092
    .local v8, "iRet":I
    if-nez v8, :cond_4a

    .line 1093
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/idelan/DeLanSDK/ResponseMethod;->success(ILjava/lang/Object;)V

    .line 1097
    :goto_49
    return-void

    .line 1095
    :cond_4a
    iget-object v0, p0, Lcom/idelan/DeLanSDK/DeLanSDK$28;->val$response:Lcom/idelan/DeLanSDK/ResponseMethod;

    invoke-interface {v0, v8}, Lcom/idelan/DeLanSDK/ResponseMethod;->failure(I)V

    goto :goto_49
.end method
