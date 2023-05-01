.class Lcom/idelan/app/crash/CustomCrashHandler$1;
.super Ljava/lang/Thread;
.source "CustomCrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/app/crash/CustomCrashHandler;->handleException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/crash/CustomCrashHandler;

.field private final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/idelan/app/crash/CustomCrashHandler;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    iput-object p2, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->val$ex:Ljava/lang/Throwable;

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 70
    iget-object v2, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v2}, Lcom/idelan/app/crash/CustomCrashHandler;->access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v3}, Lcom/idelan/app/crash/CustomCrashHandler;->access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v4}, Lcom/idelan/app/crash/CustomCrashHandler;->access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;

    move-result-object v4

    .line 73
    const-string v5, "crash_prompt"

    .line 72
    invoke-static {v4, v5}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 71
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    const/4 v4, 0x0

    .line 69
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v2, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    iget-object v3, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v3}, Lcom/idelan/app/crash/CustomCrashHandler;->access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Lcom/idelan/app/crash/CustomCrashHandler;->access$1(Lcom/idelan/app/crash/CustomCrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 79
    iget-object v2, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v2}, Lcom/idelan/app/crash/CustomCrashHandler;->access$2(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/private/aliLog?funName=putLog&appId="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v4}, Lcom/idelan/app/crash/CustomCrashHandler;->access$3(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/idelan/app/crash/CustomCrashHandler;->access$4(Lcom/idelan/app/crash/CustomCrashHandler;Ljava/lang/String;)V

    .line 80
    const-string v2, "=============CustomCrashHandler===========uri"

    iget-object v3, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v3}, Lcom/idelan/app/crash/CustomCrashHandler;->access$2(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, ""

    .line 83
    .local v1, "result":Ljava/lang/String;
    :try_start_6b
    iget-object v2, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v2}, Lcom/idelan/app/crash/CustomCrashHandler;->access$2(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v3, "putLog"

    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v4}, Lcom/idelan/app/crash/CustomCrashHandler;->access$5(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/idelan/java/Util/XMLProduct;->packageParmasData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/idelan/app/Util/NetWorkUtil;->sendPostRequest(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_84} :catch_9b

    move-result-object v1

    .line 90
    :goto_85
    const-string v2, "============CustomCrashHandler============result"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v2

    iget-object v3, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v3}, Lcom/idelan/app/crash/CustomCrashHandler;->access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idelan/app/Util/AppManager;->AppExit(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void

    .line 85
    :catch_9b
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v2

    iget-object v3, p0, Lcom/idelan/app/crash/CustomCrashHandler$1;->this$0:Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-static {v3}, Lcom/idelan/app/crash/CustomCrashHandler;->access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/idelan/app/Util/AppManager;->AppExit(Landroid/content/Context;)V

    goto :goto_85
.end method
