.class Lcom/idelan/app/Update/UpdateService$DownLoadThread;
.super Ljava/lang/Thread;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownLoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/Update/UpdateService;


# direct methods
.method private constructor <init>(Lcom/idelan/app/Update/UpdateService;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateService$DownLoadThread;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idelan/app/Update/UpdateService;Lcom/idelan/app/Update/UpdateService$DownLoadThread;)V
    .registers 3

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/idelan/app/Update/UpdateService$DownLoadThread;-><init>(Lcom/idelan/app/Update/UpdateService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 175
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 177
    .local v3, "message":Landroid/os/Message;
    :try_start_5
    iget-object v4, p0, Lcom/idelan/app/Update/UpdateService$DownLoadThread;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-static {}, Lcom/idelan/app/Update/UpdateService;->access$2()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-static {}, Lcom/idelan/app/Update/UpdateService;->access$3()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v4, v5, v6}, Lcom/idelan/app/Update/UpdateService;->access$4(Lcom/idelan/app/Update/UpdateService;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 179
    .local v0, "downloadSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_29

    .line 180
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 181
    iget-object v4, p0, Lcom/idelan/app/Update/UpdateService$DownLoadThread;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-static {v4}, Lcom/idelan/app/Update/UpdateService;->access$5(Lcom/idelan/app/Update/UpdateService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    .line 187
    .end local v0    # "downloadSize":J
    :cond_29
    :goto_29
    return-void

    .line 183
    :catch_2a
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 185
    iget-object v4, p0, Lcom/idelan/app/Update/UpdateService$DownLoadThread;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-static {v4}, Lcom/idelan/app/Update/UpdateService;->access$5(Lcom/idelan/app/Update/UpdateService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_29
.end method
